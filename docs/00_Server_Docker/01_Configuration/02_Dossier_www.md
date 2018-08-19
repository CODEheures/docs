# Création du dossier www et assignation des droits www-data à root et trucmuche

On ajouter le groupe www-data à root et trucmuche puis on crée `/var/www`

Enfin on donne le dossier www à l'utilisateur www-data et on fait les setuid pour limiter l'éxécution et setgid pour 
attribuer le groupe www-data à tout fichier créé

```
$ usermod -aG www-data root && \
usermod -aG www-data trucmuche && \
cd /var && \
mkdir www && \
chown -R www-data:www-data /var/www && \
chmod u+s /var/www && \
chmod g+s /var/www && \
chmod -R 775 /var/www
```