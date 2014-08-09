docker-functions
================

Functions to aid in common Docker tasks

Installation
------------

### docker-function.sh ###

Copy file to `/etc/profile.d`:

        # curl https://raw.githubusercontent.com/TechneDevAB/docker-functions/master/docker-functions.sh -o /etc/profile.d/docker-functions.sh

### docker.service ###

Set `TMPDIR` for Docker service (when started with systemd, in ArchLinux for instance). Copy file to `/etc/systemd/system` and restart service:

        # curl https://raw.githubusercontent.com/TechneDevAB/docker-functions/master/docker-functions.sh -o /etc/systemd/system/docker.service
        # systemctl daemon-reload
        # systemctl restart docker.service

License
=======
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

![Creative Commons Attribution-ShareAlike 4.0 International License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
