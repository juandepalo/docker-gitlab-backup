echo "---------------------Proceso Backup-------------------------------"
echo "1. Copia Script command Backup"
docker cp commandBackup.sh gitlabtest:/bin/commandBackup
docker cp commandDeleteBackupContainer.sh gitlab-qcompusoft:/bin/commandDeleteBackupContainer
echo "2. Ejecutamos script Backup"
docker exec -t gitlab-qcompusoft bash commandBackup 
echo "3. Copiamos a local los Backups"
docker cp gitlabtest:/var/opt/gitlab/backups ./tmp/backups/
echo "5. Borramos Backup Container"
docker exec -t gitlab-qcompusoft bash commandDeleteBackupContainer 
echo "---------------------FIN Proceso Backup-------------------------------"