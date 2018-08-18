# Mise à jour des hosts

Selon le cas il faut mettre à jour les hosts

- Cas d'une VM sur windows
   
   Mettre à jour le fichier  `C:\Windows\System32\drivers\etc\hosts` en faisant pointer les domaines vers l'ip de la VM
   
   Exemple:
   ```
   192.168.59.128 traefik.codeheures.test
   192.168.59.128 codeheures.test
   192.168.59.128 api.codeheures.test
   192.168.59.128 adminer.codeheures.test
   192.168.59.128 server.doc.codeheures.test
   192.168.59.128 selfjob.test
   192.168.59.128 api.selfjob.test
   192.168.59.128 echo.selfjob.test
   192.168.59.128 elastic.selfjob.test
   192.168.59.128 adminer.selfjob.test
   ```

- Cas de debian sur PC   

   Mettre à jour le fichier `/etc/hosts` en faisant pointer les domaines vers localhost
   
   Exemple:
   ```
   127.0.0.1 traefik.codeheures.test
   127.0.0.1 codeheures.test
   127.0.0.1 api.codeheures.test
   127.0.0.1 adminer.codeheures.test
   127.0.0.1 server.doc.codeheures.test
   127.0.0.1 selfjob.test
   127.0.0.1 api.selfjob.test
   127.0.0.1 echo.selfjob.test
   127.0.0.1 elastic.selfjob.test
   127.0.0.1 adminer.selfjob.test
   ```
   
- Cas d'une machine distante

   Rien à faire, les DNS sont externes   