
#include <string>
#include <iostream>
#include <map>
class Parser
{
private:
    static std::map<std::string, std::string> m_currentlist;
    static std::string m_currentbody;
    static std::string get_time(std::string lablel);

public:
    static std::map<std::string, std::string> list_prayers(std::string body);
};