#include "client.hpp"

void Client::init(std::string url, int port)
{
    struct hostent *host = gethostbyname(url.c_str());

    if ((host == NULL) || (host->h_addr == NULL))
    {
        std::cout << "Error retrieving DNS information." << std::endl;
        exit(1);
    }
    // clear structure
    bzero(&m_clientaddr, sizeof(m_clientaddr));
    // IP4
    m_clientaddr.sin_family = AF_INET;
    m_clientaddr.sin_port = htons(port);
    memcpy(&m_clientaddr.sin_addr, host->h_addr, host->h_length); // copy ip

    m_sock = socket(AF_INET, SOCK_STREAM, 0); // IP4 TCP

    if (m_sock < 0)
    {
        std::cout << "Error creating socket." << std::endl;
        exit(1);
    }
}
void Client::connectToServer()
{

    if (connect(m_sock, reinterpret_cast<struct sockaddr *>(&m_clientaddr), sizeof(m_clientaddr)) < 0)
    {
        close(m_sock);
        std::cout << "Could not connect" << std::endl;
        exit(1);
    }
}

void Client::help_HttpRequest()
{
    std::string s = R"( std::stringstream ss;
    ss << "GET /?format=json"
       << " HTTP/1.1\r\n"
       << "Host: api.ipify.org\r\n"
       << "Accept: application/json\r\n"
       << "\r\n\r\n";)";

    std::cout << "This function is just to help you to make http body " << std::endl;
    std::cout << " please try use curl --verbose url  " << std::endl;
    std::cout << "the outbut of this command will show the body of request and respond " << std::endl;
    std::cout << " after that try to make  the body like " << s << std::endl;
}
void Client::sendrequest(std::string request)
{
    if (send(m_sock, request.c_str(), request.length(), 0) != (int)request.length())
    {
        std::cout << "Error sending request." << std::endl;
        help_HttpRequest();
        exit(1);
    }
}
std::string Client::readRespose()
{
    std::string ret;
    read(m_sock, data, MAX_RESPONSE);
    ret = data;
    return ret;
}
void Client::closeConnection()
{
    close(m_sock);
}