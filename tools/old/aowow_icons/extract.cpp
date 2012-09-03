#include "mpq_libmpq.h"
#include <vector>
#include <string>
#include <fstream>
#include <algorithm>

std::string lowercase(std::string str)
{
	std::transform(str.begin(), str.end(), str.begin(), (int(*)(int))std::tolower);
	return str;
}

std::string strim(std::string str)
{
	for (std::string::iterator it = str.begin() ; it<str.end(); ++it )
	{
		if (*it == ' ') str.erase(it);
	}
	return str;
}

int main(int argc, char * arg[])
{
	std::vector<MPQArchive*> archives;
	std::ifstream ifile;
	std::string LANG = "ERro";
	std::string tmp = "", tmp1 = "", tmp2 = "", tmp3 = "", tmp4 = "", tmp5 = "";
	unsigned int i;

	std::string langs[]={"deDE", "enUS", "enGB", "frFR", "esES"};
	for (i = 0; i < 5; i++) {
		tmp1 = "./Data/" + langs[i] + "/locale-" + langs[i] + ".MPQ";
		ifile.open(tmp1.c_str(), std::ios::binary);
		if (!ifile.fail())
		{
			LANG = langs[i];
			ifile.close();
			break;
		}
	}
	if (LANG=="ERro")
	{
		std::cerr << "Error: Lang not finded" << std::endl;
		exit(1);
	}
	std::cout << "Info: Founded Lang - " << LANG << std::endl;

	tmp1 = LANG + "/locale-" + LANG + ".MPQ";
	tmp2 = LANG + "/expansion-locale-" + LANG + ".MPQ";
	tmp3 = LANG + "/patch-" + LANG + ".MPQ";
	tmp4 = LANG + "/patch-" + LANG + "-2.MPQ";
	tmp5 = LANG + "/base-" + LANG + ".MPQ";

	std::string archiveNames[]={tmp4, tmp3, tmp2, tmp1, tmp5};

	for (i=0; i<5; i++)
	{
		tmp = "./Data/" + archiveNames[i];
		archives.push_back(new MPQArchive(tmp.c_str()));
	}

	int x=0;
	std::string filename;
	std::string path = "interface\\icons";

	for (i=0; i<5; i++)
	{
		vector<string> files = archives[i]->GetFileList();
		for (vector<string>::iterator iter = files.begin(); iter != files.end(); iter++)
		{
			if (lowercase(std::string(*iter)).find(path)==0)
			{
				MPQFile m(iter->c_str());
				if(!m.isEof ()) {
					filename = "icons/" + strim(lowercase(std::string(*iter)).substr(path.length() + 1,(std::string(*iter)).length() - path.length() - 1));
					std::ofstream ofile(filename.c_str());
					if (!ofile.fail())
					{
						// Сохраняем blp
						ofile.write(m.getBuffer(), m.getSize());
						ofile.close();
						// Сохранили blp, теперь конверируем его в tga
//						blp2totga(filename.c_str(), (filename.substr(0,filename.length()-3) + "tga").c_str());
					}
				}
				x++;
				//std::cout << *iter << std::endl;
			}
		}
		//std::cout << archiveNames[i] << ": " << x << " icons" << std::endl;
		x = 0;
	}
	return (0);
}
