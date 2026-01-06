## LAMP Stack Installation

# Update System Packages
sudo yum update -y

# Install LAMP Server

sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel

#Install MySQL (MariaDB)

sudo dnf install mariadb105-server -y

# Permissions

## Added ec2-user to Apache group.

sudo chmod -a -G apache ec2-User

## Logged out and in to verify group membership

exit

ssh -i <key-pair-name>.pem ec2-user@<ec2-public-ip>

groups

## Changed ownership of /var/www and its content from ec2-user to Apache.

sudo chown -R ec2-user:apache /var/www

## Added group write permission

sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;

find /var/www -type f -exec sudo chmod 0664 {} \;

## PHP Test File
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php