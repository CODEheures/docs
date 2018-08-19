# Sécuriser l'accès ssh

Le but est d'éviter que root puisse se connecter directement à ssh et de changer le port ssh pour rendre l'accès plus difficile à trouver

```
$ vi /etc/ssh/sshd_config
```

1. Changer le port d'accès ssh

   changer
   
   ```vim
   #Port 22
   ```
   
   par un port libre et aléatoire (disons 8955 pour l'exemple)
   ```vim
   Port 8955
   ```

2. Empecher le compte root de se logguer directement en ssh
   
   Le compte root ne sera accéssible par la commande `su root` qu'après s'être connecté en ssh avec le compte de 
   l'utilisateur créé précédement
   
   changer
   
   ```vim
   #PermitRootLogin ....
   ```
   
   par une restriction totalement désactivante
   ```vim
   PermitRootLogin no
   ```
   
# Redémarrer ssh

```
$ service ssh restart
```