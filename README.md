# docker-gitlab-backup
Backup de Gitlab en docker
## Script


### run_gitlab.sh
    Arranca una contendor con gitlab

### contrab.sh
    Tarea programada, para ejecución de script runBackup.sh
### commandBackup.sh
    Comando para creacion de backup de gitlab
### runBackup
    script que copia el commandBackup al contenedor, ejecuta y extrae a la áquina local el backup de gitlab.