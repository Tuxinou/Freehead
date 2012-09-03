#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>
#include <unistd.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct blpheader {
  char ident[4];
  uint32_t type;
  uint32_t flags;
  uint32_t width;
  uint32_t height;
  uint32_t mipmapoffsets[16];
  uint32_t mipmaplengths[16];
} __attribute__((__packed__));

struct blppal {
  uint32_t color[256];
} __attribute__((__packed__));


struct tgaheader {
  uint8_t identsize;
  uint8_t colormaptype;
  uint8_t imagetype;

  uint16_t colormapstart;
  uint16_t colormaplen;
  uint8_t colormapbits;

  uint16_t xstart;
  uint16_t ystart;
  uint16_t width;
  uint16_t height;
  uint8_t bits;
  uint8_t descriptor;
} __attribute__((__packed__));

struct color5650 {
  unsigned int red: 5;
  unsigned int green: 6;
  unsigned int blue: 5;
} __attribute__((__packed__));
struct color8888 {
  uint8_t red;
  uint8_t green;
  uint8_t blue;
  uint8_t alpha;
} __attribute__((__packed__));

struct texel {
  struct color5650 color0;
  struct color5650 color1;
  uint8_t data[4];
};
struct trans_block {
  uint8_t data[8];
};

inline struct color8888 color_merge( int part_a, struct color8888 c_a,
				     int part_b, struct color8888 c_b )
{
  struct color8888 c;
  int tmp;
  c.red = ( (part_a * c_a.red) + 
	    (part_b * c_b.red) + 1) / (part_a + part_b);
  c.green = ( (part_a * c_a.green) + 
		   (part_b * c_b.green) + 1) / (part_a + part_b);
  c.blue = ( (part_a * c_a.blue) + 
		   (part_b * c_b.blue) +1) / (part_a + part_b);
  c.alpha = 1;
  return c;
}

inline uint16_t intval5650( struct color5650 c ) 
{
  return *((uint16_t *)(&c));
}

int write_dxt( int fd, struct blpheader *hdr, int version );


int main( int argc, char *argv[] ) {
  
  int blp_fd;
  struct blpheader blp_hdr;
  struct blppal blp_pal;
  struct tgaheader tga_hdr;
  int i;

  if( argc != 2 ) {
    fprintf(stderr, "usage blp2totga <filename>\n" );
    return 1;
  }
  
  if( (blp_fd = open( argv[1], O_RDONLY )) < 0 ) {
    perror( "open" );
    return 1;
  }
		
  if( read( blp_fd, &blp_hdr, sizeof(blp_hdr) ) != sizeof(blp_hdr) ) {
    perror( "read" );
    return 1;
  }

#if 0
  fprintf( stderr,  "%08x\n", sizeof( struct blpheader ) + sizeof( struct blppal ) );
  fprintf( stderr, "%08x\n", sizeof( struct tgaheader ) );
  fprintf( stderr, "%08x\n", sizeof( struct color5650) );
  fprintf( stderr, "%08x\n", sizeof( struct color8888) );

  fprintf( stderr, "ident: %c%c%c%c\n",blp_hdr.ident[0],blp_hdr.ident[1],
	 blp_hdr.ident[2],blp_hdr.ident[3] );
  fprintf( stderr, "type: %08X\n",blp_hdr.type );
  fprintf( stderr, "flags: %08X\n",blp_hdr.flags );
  fprintf( stderr, "width: %d\n",blp_hdr.width );
  fprintf( stderr, "height: %d\n",blp_hdr.height );
  fprintf( stderr, "mipmaps:\n" );

  for( i=0 ; i<16 ; i++ ) {
    fprintf( stderr, "  %02d: offset=%08x, length=%08x\n", i,
	   blp_hdr.mipmapoffsets[i],blp_hdr.mipmaplengths[i] );
  }
#endif

  if( read( blp_fd, &blp_pal, sizeof(blp_pal) ) != sizeof(blp_pal) ) {
    perror( "read1" );
    return 1;
  }

  tga_hdr.identsize = 0;
  tga_hdr.colormaptype = 0;
  tga_hdr.imagetype = 2;

  tga_hdr.colormapstart=0;
  tga_hdr.colormaplen=0;
  tga_hdr.colormapbits=0;

  tga_hdr.xstart = 0;
  tga_hdr.ystart = 0;
  tga_hdr.width = blp_hdr.width;
  tga_hdr.height = blp_hdr.height;
  tga_hdr.bits = 32;
  tga_hdr.descriptor=0x28;

  write( STDOUT_FILENO, &tga_hdr, sizeof( tga_hdr ) );
  
  lseek( blp_fd, blp_hdr.mipmapoffsets[0], SEEK_SET );
  if( blp_hdr.flags & 0x0800 ) {
    if( write_dxt( blp_fd, &blp_hdr, 3 ) < 0) {
      return 1;
    }
  } else {
    if( write_dxt( blp_fd, &blp_hdr, 1 ) < 0) {
      return 1;
    }
  }

  return 0;
}

int write_dxt( int fd, struct blpheader *hdr, int version )
 {  
  struct color8888 *pix_buf;
  int pix_buf_len;
  int i;
  int texel_len;

  pix_buf_len = sizeof(*pix_buf) * hdr->width * hdr->height;
  pix_buf = (struct color8888*) malloc( pix_buf_len );
  memset( pix_buf, 0, pix_buf_len );

  texel_len = sizeof(struct texel) +
    ((version==1)?0:sizeof(struct trans_block));
  for( i=0 ; i<hdr->mipmaplengths[0] ; i+=texel_len ) {
    struct texel t;
    struct trans_block tb;

    struct color8888 colors[4];
    int x,y;
    int idx = i/texel_len * 4;
    int xoff = idx%hdr->width;
    int offset = (idx-xoff) * 4 + xoff;

    if( version > 1 ) {
     read( fd, &tb, sizeof(tb) );
    }
    read( fd, &t, sizeof(t) );


    colors[0].red = t.color0.red << 3;
    colors[0].green = t.color0.green << 2;
    colors[0].blue = t.color0.blue << 3;
    colors[0].alpha = 255;
    colors[1].red = t.color1.red << 3;
    colors[1].green = t.color1.green << 2;
    colors[1].blue = t.color1.blue << 3;
    colors[1].alpha = 255;


    //        if( colors[0].c.i > colors[1].c.i ) {
    if( (version!=1) ||
	intval5650(t.color0) > intval5650(t.color1) ) {
      colors[2] = color_merge( 2, colors[0], 1, colors[1] );
      colors[3] = color_merge( 1, colors[0], 2, colors[1] );
    } else {
      colors[2] = color_merge( 1, colors[0], 1, colors[1] );
      colors[3].red = colors[3].green 
	= colors[3].blue = colors[3].alpha = 0;
    }

    for( y=0 ; y<4 ; y++ ) {
      uint8_t data = t.data[y];
      for( x=0 ; x<4 ; x++ ) {
	pix_buf[ offset + (y * hdr->width) + x ] =
	  colors[ (data >> (x*2)) & 0x3 ];
	if( version > 1 ){
	  pix_buf[ offset + (y * hdr->width) + x ].alpha =
	    (tb.data[y*2 + x/2] >> ((x&0x1)*4)) << 4;
	}
      }
    }
    
  }

  write( STDOUT_FILENO, pix_buf, pix_buf_len );
  return 0;
}
