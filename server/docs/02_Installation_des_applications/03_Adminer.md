# Installation de l'application CODEheures

On crée le repertoire 
```
$ mkdir /var/www/adminer && cd /var/www/adminer
```

On récupère le lien de la dernière version adminer ici: <https://www.adminer.org/#download>
On le télécharge:

```
$ wget https://github.com/vrana/adminer/releases/download/v4.6.3/adminer-4.6.3.php
```

On le renomme pour matcher avec les futures services docker

```
$ mv adminer-4.6.3.php adminer.php
```
