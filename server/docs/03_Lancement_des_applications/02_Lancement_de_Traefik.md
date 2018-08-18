# Lancement de la stack Traefik

Traefik est un reverse proxy qui permet de gerer le... trafic du server (redirections, liens entre requetes et services docker, letsencrypt...) 

- En dev (domaines en codeheures.test)
   ```
   $ cd /var/www/0-docker/stacks/traefik/dev && docker stack deploy -c traefik-compose.yml traefik
   ```

- En test (domaines en codeheures.com)
   ```
   $ cd /var/www/0-docker/stacks/traefik/test && docker stack deploy -c traefik-compose.yml traefik
   ```

- En prod (domaines en codeheures.fr)
   ```
   $ cd /var/www/0-docker/stacks/traefik/prod && docker stack deploy -c traefik-compose.yml traefik
   ```   