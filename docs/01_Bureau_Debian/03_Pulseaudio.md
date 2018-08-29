# Pulseaudio pour le son

Pulseaudio permet d'obtenir les outils nécéssaire au fonctionnement de la carte audio M-Audio Delta 1010LT

Création du service

```
$ sudo vi /etc/systemd/system/pulseaudio.service
```

```vim
[Unit]
Description=PulseAudio system server

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
PrivateTmp=true
ExecStart=/usr/bin/pulseaudio --system --realtime --no-cpu-limit
```

Droits d'accès et lancement
```
$ sudo usermod -a -G pulse-access trucmuche && \
sudo usermod -a -G pulse-access root && \
sudo systemctl enable pulseaudio.service
```