## g.chiuchiolo 2021 ##
##                   ##
## Comandi Utili CS  ##


################### Analisi ACCESS Log websites (modificare data riferimento)
grep -c "07/Apr/2021:1" /var/www/vhosts/*/logs/access*_log | sort -n -k2 -t:


################### Tail ACCESS Log websites
tail -f /var/www/vhosts/*/logs/access*_log


################### Analisi ERROR Log websites (modificare data riferimento)
grep -c "Mon Apr 19 03" /var/www/vhosts/*/logs/error_log | sort -n -k2 -t:


################### Tail ERROR Log websites
tail -f /var/www/vhosts/*/logs/error_log


################### Analisi ACCESS Log websites (TODAY)
grep -c "$(date +"%d/%b/%Y")" /var/www/vhosts/*/logs/access*_log | sort -n -k2 -t:


################### Analisi ACCESS Log websites (CURRENT HOUR)
grep -c "$(date +"%d/%b/%Y:%H")" /var/www/vhosts/*/logs/access*_log | sort -n -k2 -t:


################### Analisi webroot Permessi User Groups
ls -al /var/www/vhosts/*/httpdocs


################## Ciclare ACCESS Log stampando richieste e filename
for i in $(find /var/www/vhosts/*/logs/ -name "access*_log"); do grep --with-filename "12/Apr/2021:07:04" $i; done;


################## Correggere permessi WP
find <PATH> -type d -exec chmod 755 {} \;
find <PATH> -type f -exec chmod 644 {} \;


################## Upload folder FIX permessi
chmod -R u+g wp-content/uploads
