
#include <string>
#include <iostream>
#include <map>
class Parser
{
private:
    std::map<std::string, std::string> m_currentlist;
    std::string m_currentbody;
    std::string get_time(std::string lablel);

public:
    std::map<std::string, std::string> list_prayers(std::string body);
};