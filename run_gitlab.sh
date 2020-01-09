sudo docker run --detach   \
                --hostname gitlabtest  \
                --publish 443:443 \
                --publish 80:80   \
                --name gitlabtest  \
                --restart always   \
                --volume /srv/gitlab/config:/etc/gitlab   \
                --volume /srv/gitlab/logs:/var/log/gitlab   \
                --volume /srv/gitlab/data:/var/opt/gitlab gitlab/gitlab-ee:latest

