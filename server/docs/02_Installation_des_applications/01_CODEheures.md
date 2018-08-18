# Installation de l'application CODEheures

On crée le repertoire on on récupère la version master

Pour le front on installe de suite les node_modules

```
$ mkdir /var/www/codeheures && \
mkdir /var/www/codeheures/api && \
mkdir /var/www/codeheures/front && \
cd /var/www/codeheures/api && \
git init && \
git remote add origin https://github.com/CODEheures/codeheuresv2back.git && \
git pull origin master && \
cd /var/www/codeheures/front && \
git init && \
git remote add origin https://github.com/CODEheures/codeheuresv2.git && \
git pull origin master && \
npm install
```
