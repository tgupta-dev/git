#!/bin/bash

#Ubuntu
sudo xrandr -s 1440x900

#npshop
sudo cp -a /home/dev/git/npshop/. /home/dev/webroot/npshop
mysql -u root -proot < /home/dev/git/npshop/npshopdb/npshopdb.sql
sudo echo "GRANT ALL PRIVILEGES ON npshopdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

#shadi
sudo cp -a /home/dev/git/shadi/. /home/dev/webroot/shadi
mysql -u root -proot < /home/dev/git/shadi/rsvp.sql
sudo echo "GRANT ALL PRIVILEGES ON shadidb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

#venus
cd /home/dev/git/Venus
mvn eclipse:eclipse
mysql -u root -proot < /home/dev/git/Venus/sql/venus.sql
sudo echo "GRANT ALL PRIVILEGES ON venusdb.* TO 'tgadmin'@'localhost'" | mysql -uroot -proot

sudo echo "FLUSH PRIVILEGES" | mysql -uroot -proot


#tomcat config
#cd ~/workspace/.metadata/.plugins/org.eclipse.core.runtime/.settings/    
#rm org.eclipse.jst.server.tomcat.core.prefs    
#rm org.eclipse.wst.server.core.prefs

sudo service tomcat7 stop
sudo update-rc.d tomcat7 disable

cd /usr/share/tomcat7
sudo ln -s /var/lib/tomcat7/conf conf
sudo ln -s /var/lib/tomcat7/common common
sudo ln -s /var/lib/tomcat7/server server
sudo ln -s /var/lib/tomcat7/shared shared
sudo ln -s /etc/tomcat7/policy.d/03catalina.policy conf/catalina.policy
sudo ln -s /var/log/tomcat7 log
sudo chmod -R 777 /usr/share/tomcat7/conf
