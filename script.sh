#!/bin/bash


linea="*/1 * * * * bash /usr/bin/notificador-obtener-dbus
27 12 * * * /usr/bin/clamscan --exclude-dir=/home/ceibal/.clamtk/viruses --exclude-dir=smb4k --exclude-dir=/run/user/ceibal/gvfs --exclude-dir=/home/ceibal/.gvfs --exclude-dir=.thunderbird --exclude-dir=.mozilla-thunderbird --exclude-dir=.evolution --exclude-dir=Mail --exclude-dir=kmail -i -r /home/ceibal --log="$HOME/.clamtk/history/$(date +\%b-\%d-\%Y).log" 2>/dev/null # clamtk-scan"
(crontab -u ceibal -l; echo "$linea") | crontab -u ceibal -
