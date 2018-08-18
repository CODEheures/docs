# Lancement de la stack CODEheures

1. Lancement docker

   - En dev (domaines en codeheures.test)
      ```
      $ cd /var/www/0-docker/stacks/codeheures/dev && docker stack deploy -c app.yml codeheures
      ```
   
   - En test (domaines en codeheures.com)
      ```
      $ cd /var/www/0-docker/stacks/codeheures/test && docker stack deploy -c app.yml codeheures
      ```
   
   - En prod (domaines en codeheures.fr)
      ```
      $ cd /var/www/0-docker/stacks/codeheures/prod && docker stack deploy -c app.yml codeheures
      ```   
   
2. Activation des alias de la stack codeheures (permet l'accès à la commande php)

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
   
   #source /var/www/0-docker/stacks/selfjob/alias #alias for selfjob
   source /var/www/0-docker/stacks/codeheures/alias #alias for codeheures
   ```

3. Installation des dépendances composer 
   
   > attention le service codeheures_php doit être actif

   ```
   $ cd /var/www/codeheures/api && composer install
   ```   