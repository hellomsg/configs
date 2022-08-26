# install from rpm package and set environment variables

curl --output /tmp/jdk.rpm "https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.rpm";
rpm -i /tmp/jdk.rpm;
touch /etc/profile.d/java.sh;
echo "#export JAVA_HOME=/usr/java/jdk-18.0.2.1; export PATH=$PATH:$JAVA_HOME/bin" >> /etc/profile.d/java.sh;

# uninstall
 
rpm -qa | grep jdk;
rpm -e jdk-18-18.0.2.1-ga.x86_64;
