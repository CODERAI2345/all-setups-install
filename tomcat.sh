yum install java-17-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v11.0.18/bin/apache-tomcat-11.0.18.tar.gz
tar -zxvf apache-tomcat-11.0.18.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-11.0.18/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-11.0.18/webapps/manager/META-INF/context.xml
sh apache-tomcat-11.0.18/bin/startup.sh



# 1. Install Java
yum install java-17-amazon-corretto -y

# 2. Download Tomcat 11.0.18
wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.18/bin/apache-tomcat-11.0.18.tar.gz

# 3. Extract
tar -zxvf apache-tomcat-11.0.18.tar.gz

# 4. Configure tomcat-users.xml
sed -i '56 a\<role rolename="manager-gui"/>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '57 a\<role rolename="manager-script"/>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '58 a\<user username="tomcat" password="admin@123" roles="manager-gui,manager-script"/>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '59 a\</tomcat-users>' apache-tomcat-11.0.18/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-11.0.18/conf/tomcat-users.xml

# 5. Remove IP restriction from Manager app
sed -i '21d' apache-tomcat-11.0.18/webapps/manager/META-INF/context.xml
sed -i '21d' apache-tomcat-11.0.18/webapps/manager/META-INF/context.xml

# 6. Start Tomcat
sh apache-tomcat-11.0.18/bin/startup.sh
