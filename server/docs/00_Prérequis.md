# Installation debian

Pour commencer il faut installer debian stretch(9) soit
- chez un herbergeur (ex: ovh)

   dans ce cas, si besoin et possible choisir la distribution standard (sinon risque de ne pas avoir tous les outils du network overlay)
   
- sur une VM (vmware)
   
   Dans ce cas choisir la configuration sans environnement de bureau avec seulement server ssh et outils standards
- sur un ordinateur

   Dans ce cas choisir un environnement de bureau (ex: xfce), server ssh et outils standards.

Télécharger l'outil docker de test <https://docs.docker.com/install/linux/linux-postinstall/#troubleshooting> pour 
s'assurer de la compatibilité du système 

`Note: La clé CONFIG_VXLAN doit être enabled`

Après l'installation on installe vim

```
$ apt-get update && apt-get install vim
```