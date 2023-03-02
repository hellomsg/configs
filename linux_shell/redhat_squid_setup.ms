# install
yum -y install squid;
yum -y install httpd-tools  openssl;
cd /etc/squid/;
# set username and password
touch /etc/squid/passwords && chown squid /etc/squid/passwords;
htpasswd /etc/squid/passwords yourusername;
service squid start;
