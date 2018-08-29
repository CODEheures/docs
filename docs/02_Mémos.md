# Mémos divers

## MYSQL
Pour définir un mot de passe root à l'installation de mariadb
```
$ mysql -u root -p mysql
> GRANT ALL PRIVILEGES ON *.* TO root@'localhost' IDENTIFIED BY 'monpass';
> EXIT;
```

Pour un remote access (autorisation d'accès par l'exterieur du serveur)
Editer /etc/mysql/my.cnf:
```
$ sudo vi /etc/mysql/my.cnf
```
Mettre l'adresse IP autorisée dans bind-address:
```
bind-address = xxx.xxx.xxx.xxx
```

Débloquer le firewall
```
$ sudo /sbin/iptables -A INPUT -i eth0 -p tcp --destination-port 3306 -j ACCEPT
```

Créer un utilisateur Sous mysql
```
CREATE USER 'remote'@'%' IDENTIFIED BY PASSWORD '*******';
GRANT ALL PRIVILEGES ON `mabasededonnee`.* TO 'remote'@'%';
```


## NTP
Pour définir l'heure du serveur
```
$ apt-get install ntp ntpdate
$ ntpdate pool.ntp.org
$ service ntp start
```




## NGINX
```
$ vi /etc/nginx/nginx.conf
```
```vim
server_name_hash_bucket_size 64;
server_tokens off;
client_max_body_size 10M;
```

Exemples de Configs:
- [node + ssl](/resources/nginx_node_ssl.conf)
- [php](/resources/nginx_php.conf)
- [php + ssl](/resources/nginx_php_ssl.conf)


## PHP
php.ini
```
upload_max_filesize = 5M
max_execution_time = 60
````
Les extensions php communes
- php7.0-cli
- php7.0-common
- php7.0-curl
- php7.0-fpm
- php7.0-gd
- php7.0-intl
- php7.0-json
- php7.0-mbstring
- php7.0-mcrypt
- php7.0-mysql
- php7.0-opcache
- php7.0-readline
- php7.0-soap
- php7.0-sqlite3
- php7.0-xml
- php7.0-xmlrpc
- php7.0-xsl
- php7.0-zip

## VMWare shared folder

```
$ sudo apt-get install fuse
```
Dans le menu de la VM chosir installer les tools

```
$ sudo mkdir /mnt/cdrom && \
sudo mount /dev/cdrom /mnt/cdrom && \
sudo cp /mnt/cdrom/VMWareTools-10.1.1.5214329.tar.gz /tmp && \
cd /tmp && \
sudo tar -xzvf VMWareTools-10.1.1.5214329.tar.gz && \
cd vmware-tools-distrib && \
sudo ./vmware-install.pl
```

monter hgfs en auto 

editer fstab
```
$ sudo vi /etc/fstab
```

Ajouter la ligne suivante
```
.host:/www /var/www fuse.vmhgfs-fuse allow_other,uid=33,gid=33,umask=0002,auto_unmount,defaults 0 0
```

## MAILX

Dans le cas de l'utilisation de bsd-mail, exim4 afin de relancer l'appli faire
```
$ sudo dpkg-reconfigure exim4-config
```
Choisir internet mail et laisser le reste par defaut


## SUPERVISOR

Exemple de [fichier de configuration](/resources/supervisor_node.conf) de supervisor