CREATE DATABASE IF NOT EXISTS dvwa;
CREATE USER dvwa@localhost IDENTIFIED BY "dvwa";
GRANT all on dvwa.* to dvwa@localhost;
FLUSH PRIVILEGES;