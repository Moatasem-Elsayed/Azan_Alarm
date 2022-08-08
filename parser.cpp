#include "parser.hpp"
#include <algorithm>
#include <array>

std::string Parser::get_time(const std::string lablel)
{
    std::string result;
    auto it = m_currentbody.find(lablel);
    if (it != std::string::npos)
    {
        result = "";
    }
    it += lablel.length() + 2;
    result = m_currentbody.substr(it, 7);
    return result;
}

std::map<std::string, std::string> Parser::list_prayers(std::string body)
{
    m_currentbody = body;
    std::array<std::string, 5> p = {
        "Fajr",
        "Dhuhr",
        "Asr",
        "Maghrib",
        "Isha"};
    for (int i = 0; i < p.size(); i++)
    {
        m_currentlist.insert({p[i], get_time(p[i])});
       // std::cout << p[i] << ":\t" << m_currentlist[p[i]] << std::endl;
    }

    return m_currentlist;
}
