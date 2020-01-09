# docker-gitlab-backup
Backup de Gitlab en docker
1. Script
    run_gitlab.sh: arranca una contendor con gitlab
    contrab.sh: tarea programada, para ejecución de script runBackup.sh
    commandBackup.sh: Comando para creacion de backup de gitlab
    runBackup: script que copia el commandBackup al contenedor, ejecuta y extrae a la máquina local el backup de gitlab.