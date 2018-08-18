# Installation de l'application Selfjob

On crée le repertoire on on récupère la version master

Pour le front on installe de suite les node_modules

```
$ mkdir /var/www/selfjob && \
mkdir /var/www/selfjob/api && \
mkdir /var/www/selfjob/frontv2 && \
cd /var/www/selfjob/api && \
git init && \
git remote add origin https://github.com/CODEheures/self-job-api.git && \
git pull origin master && \
cd /var/www/selfjob/frontv2 && \
git init && \
git remote add origin https://github.com/CODEheures/self-job-frontv2.git && \
git pull origin master && \
npm install
```
