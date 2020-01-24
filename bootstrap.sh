#!/usr/bin/env bash

### Update packages ###
echo -e "\n--- Updating packages list ---\n"
apt-get update

### Install Apache ###
echo -e "\n--- Installing Apache ---\n"
apt-get install -y apache2

### Install MySQL ###
echo -e "\n--- Installing MySQL Server ---\n"
apt-get install -y mysql-server
# Lock down installation (based on mysql_secure_installation command)
mysql -sfu root < "/vagrant/mysql_secure_installation.sql"

### Install PHP ###
echo -e "\n--- Installing PHP ---\n"
apt-get install -y php libapache2-mod-php php-mysql php-xml php-curl
# Tell Apache to prefer PHP files
cat > /etc/apache2/mods-enabled/dir.conf << EOF
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
EOF

### Restart Apache ###
systemctl restart apache2
