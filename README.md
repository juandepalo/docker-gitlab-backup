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
    script que copia el commandBackup al contenedor, ejecuta y extrae a la máquina local el backup de gitlab.


## Prueba Backup
    
* Arranca una instancia de gitlab con la shell run_gitlab.sh
* ejecuta script runBackup

## Prueba Restore
* copia el tar generado en la ruta /var/opt/gitlab/backups/*
* Para los siguientes servicios

        gitlab-ctl stop unicorn
        gitlab-ctl stop sidekiq

* verifica el estado de los servicios

        gitlab-ctl status

* Restaurar la copia de seguridad. Debe especificar la marca de tiempo de la copia de seguridad que desea restaurar:

        ejemplo: 1578549752_2020_01_09_11.11.3-ee_gitlab_backup.tar
        gitlab-rake gitlab:backup:restore BACKUP=1578549752_2020_01_09_11.11.3-ee

* Reinicie y verifique GitLab:

        gitlab-ctl start
        gitlab-rake gitlab:check SANITIZE=true
