# Lancement de la stack Selfjob

1. Mise à jour paramètre système pour le service elasticsearch

   ```
   $ cp /var/www/0-docker/server/etc/sysctl.d/elasticsearch.conf /etc/sysctl.d && \
   sysctl -p /etc/sysctl.d/elasticsearch.conf
   ```

2. Lancement docker

   - En dev (domaines en codeheures.test)
      ```
      $ cd /var/www/0-docker/stacks/selfjob/dev && docker stack deploy -c app.yml selfjob
      ```
   
   - En test (domaines en codeheures.com)
      ```
      $ cd /var/www/0-docker/stacks/selfjob/test && docker stack deploy -c app.yml selfjob
      ```
   
   - En prod (domaines en codeheures.fr)
      ```
      $ cd /var/www/0-docker/stacks/selfjob/prod && docker stack deploy -c app.yml selfjob
      ```   
   
3. Activation des alias de la stack selfjob (permet l'accès à la commande php)

   ```
   $ vi ~/.bashrc
   ```
   
   ```vim
   --- Alias ---
   alias l='ls -la | more'
   alias q='cd .. && l'
   alias h='history'
   
   # docker php, composer, logsnpm, logecho
   # do a choice
   
   source /var/www/0-docker/stacks/selfjob/alias #alias for selfjob
   #source /var/www/0-docker/stacks/codeheures/alias #alias for codeheures
   ```

4. Installation des dépendances composer et création de la clé passport
   
   > attention le service selfjob_php doit être actif

   ```
   $ cd /var/www/selfjob/api && composer install && php artisan passport:keys
   ``` 