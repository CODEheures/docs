# Installation des applications

Liste des applications supplémentaires à installer (voir les sites web)

- postman
- phpstorm et/ou visual studio code
- google chrome
- opéra

## Augmenter la limit memoire des watches
Resource trouvée ici: <https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit>
 ```
 $ sudo vi /etc/sysctl.d/phpstorm.conf
 ```
 
 ```vim
 fs.inotify.max_user_watches = 524288
 ```
 
 ```
$ sudo sysctl -p --system
```

## Liste des addons/extensions

1. Google chrome
   
   - elastic-head
   - Vue developper tools
   - Augury

2. Firefox

   - wappalyser

3. Opéra

   - smoothscroll

4. Visual studio code

   - Angular Language service (Angular)
   - Angular v6 Snippets (John Papa)
   - Auto Close Tag (Jun Han)
   - Auto rename Tag (Jun Han)
   - Docker (Microsoft)
   - ESLint (Dirk Baeumer)
   - French Language Pack (Microsoft)
   - GitLens (Eric Amodio)
   - json2ts (Gregor Biswanger)
   - TSLint (egamma)
   - VS Color Picker (lihui)
       