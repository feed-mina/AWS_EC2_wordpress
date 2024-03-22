// 워드프레스 만드는 방법

chmod 400 "{프라이빗키}"
// ec2에서 인스턴스 만든 후 ssh 연결
ssh -i "{프라이빗키}" ubuntu@ec2-{public DNS / 탄력적 IP}.ap-northeast-2.compute.amazonaws.com


sudo apt install mysql-server # MySQL 서버 설치 

sudo mysql -u root -p # MySQL 접속

use mysql;
CREATE USER '{생성할 사용자 이름}'@'%' IDENTIFIED BY '{비밀번호}'; # 생성할 사용자 비밀번호 설정
GRANT ALL PRIVILEGES ON *.* TO '{사용자 이름}'@'%'; # 외부 접속이 가능하도록 설정
FLUSH PRIVILEGES;
exit; 

cd /etc/mysql/mysql.conf.d;
sudo vi mysqld.cnf; 

// mysqld.cnf 에서 외부접속 허용하기 bind-address 바꿔주기
// bind-address = 0.0.0.0

sudo service mysql restart

// 여기까지 mysql 설정하고 mysql workbench 나 dbeaver 에서 연결하기

// Apache 웹 서버 설치
sudo apt-get install apache2

cd /home/project

sudo mkdir /home/project
sudo vi /home/project/index.html 
// Hello, world! 
// public DNS / 탄력적 IP 들어가면 Hello, world 가 보임

// apache2.conf 설정 파일 열기
sudo vi /etc/apache2/apache2.conf 


// 루트 디렉토리 변경
/*
<Directory /home/project/>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory> 
*/

cat apache2.conf 

// default.conf 설정 파일 열기
sudo vi /etc/apache2/sites-available/000-default.conf

// DocumentRoot /home/project 로 변경


cat  000-default.conf

sudo apt-get update -y

 cd /home/project

 sudo wget https://wordpress.org/latest.zip
 
sudo apt-get install php

sudo apt install unzip

sudo unzip latest.zip

rm -rf html/

mv wordpress html

sudo mv wordpress html

cd html/

sudo cp wp-config-sample.php wp-config.php

cat wp-config.php

sudo vi wp-config.php

cat wp-config.php

sudo apt-install php72w-mysql

sudo service apache2 start

sudo systemctl enable apache2.service

sudo apt install php libapache2-mod-php php-mysql -y

sudo apt install php libapache2-mod-php php-mysql -y

apt-get install php7.2-xml php7.2-curl php7.2-gd php7.2-mbstring

sudo apt-get install php7.2-xml php7.2-curl php7.2-gd php7.2-mbstring

sudo a2enmod rewrite

sudo a2enmod ssl

sudo systemctl restart apache2

updatedb

sudo apt install plocate

locate php.ini

cat /etc/php/8.1/apache2/php.ini

sudo service apache2 restart

sudo service apache2 status

locate wp-config.php

cat /home/project/html/wp-config.php

sudo vi /home/project/html/wp-config.php

locate wordpress 

// wordpress 위치를 찾아서 chown 한다. 

sudo chown www-data.www-data /home/project/html/* -R

sudo mysql -u root -p
 
CREATE USER wordpress {DB_USER} BY '{DB_PASSWORD}';

GRANT ALL PRIVILEGES ON {DB_USER}.* TO {DB_USER};

FLUSH PRIVILEGES;
 
locate wp-config.php

cat /home/project/html/wp-config.php

/** DB 이름, user , password 설정
// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '' );

/** Database username */
define( 'DB_USER', '' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8');

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );


*/

sudo apachectl restart  

sudo service apache2 status

