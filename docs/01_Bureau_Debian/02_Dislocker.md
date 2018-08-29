# Installation de dislocker

Dislocker permet l'ouverture des disques BitLocker Windows

```
$ cd ~ && \
git clone https://github.com/Aorimn/dislocker.git dislocker && \
cd dislocker && \
cmake . && \
make && \
sudo make install && \
sudo mkdir /mnt/dislockerH && \
sudo mkdir /mnt/H
```

Ajouter la ligne suivante à fstab
```
$ sudo vi /etc/fstab
```

```vim
/mnt/dislockerH/dislocker-file  /mnt/H auto rw,user,nofail,x-gvfs-show,x-gvfs-name=H: 0 0
```

Enfin le petit script suivant permettra d'ouvrir le disque en mode interractif

```
$ sudo vi /usr/share/dislocker/unlock_disk_H
```

```vim
#!/bin/bash
dislocker -v -V /dev/sdc1 -u -- /mnt/dislockerH
mount -a
```