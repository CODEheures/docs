# Autoriser trucmuche à utiliser la commande sudo

On install sudo et on ajoute le groupe sudo à trucmuche

```
$ apt-get update && apt-get install sudo && usermod -aG sudo trucmuche
```

>A partir de maintenant on se déconnecte du compte root et on se reconnecte avec trucmuche. On utilise la commande sudo 