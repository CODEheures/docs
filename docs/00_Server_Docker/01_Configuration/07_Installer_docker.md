# Installer Docker


1. Les instructions officielles de l'installation de Docker via package manager sont à lire ici: 
<https://docs.docker.com/install/linux/docker-ce/debian/>

2. En fin d'installation on ajoute le groupe docker à trucmuche et root et on active docker au démarrage

   ```
   $ sudo groupadd docker
   $ sudo usermod -aG docker trucmuche && \
   sudo usermod -aG docker root && \
   sudo systemctl enable docker
   ```

3. Il faut déconnecter le compte trucmuche et se reconnecter pour activer le group docker

   ```
   $ exit
   ```

4. Si on ne l'a pas fait en prérequis on lance l'outil de test afin de s'assurer que le network overlay fonctionnera correctement:

   Télécharger l'outil docker de test ici: <https://docs.docker.com/install/linux/linux-postinstall/#troubleshooting> 

   `Note: La clé CONFIG_VXLAN doit être enabled`

