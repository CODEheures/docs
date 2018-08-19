# Création d'alias

Afin de se simplifier la vie on crée des raccourcis bash (alias)

Ajoutons les lignes suivantes au .bashrc des comptes trucmuche et root

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

On jouera sur l'activation d'une des 2 dernieres lignes pour acceder aux alias de la stack souhaitée

Les alias présents dans les stacks permettent les commandes suivantes (sur la stack activée)
```
$ php ... #Lance la commande php. Elle est exécuté dans le repertoire en cours (se placer là ou elle doit être éxécutée)
$ composer ... #commande composer exécutée dans le repertoire en cours
$ logsnpm #pour activer les logs du container npm en cours d'éxécution
$ logsecho #pour activer les logs du container laravel-echo-server en cours d'éxécution
```

Plus tard (quand on aura installé les stacks docker) on les activera avec la commande 

```
$ source ~/.bashrc
```
