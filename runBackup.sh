echo "---------------------Proceso Backup-------------------------------"
echo "1. Copia Script command Backup"
docker cp commandBackup.sh gitlabtest:/bin/commandBackup
echo "2. Ejecutamos script Backup"
docker exec -t gitlabtest bash commandBackup 
echo "3. Copiamos a local los Backups"
docker cp gitlabtest:/var/opt/gitlab/backups .
echo "4. Borramos Backup locales"
rm ./backups/*.tar
echo "5. Borramos Backup docker"

echo "---------------------FIN Proceso Backup-------------------------------"
