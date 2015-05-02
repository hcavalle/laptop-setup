FROM ubuntu
MAINTAINER hcavalle
WORKDIR /data/hcavalle/projects/ubuntu-setup
ADD inventory /data/hcavalle/projects/ubuntu-setup/inventory
ADD requirements.txt /data/hcavalle/projects/ubuntu-setup/requirements.txt
ADD run.sh /data/hcavalle/projects/ubuntu-setup/run.sh
RUN chmod +x /data/hcavalle/projects/ubuntu-setup/run.sh
RUN /data/hcavalle/projects/ubuntu-setup/run.sh

ADD setup.yml /data/hcavalle/projects/ubuntu-setup/setup.yml
ADD roles /data/hcavalle/projects/ubuntu-setup/roles
#ADD main.yml /data/hcavalle/projects/ubuntu-setup/roles/common/defaults/main.yml
RUN ansible-playbook -i inventory setup.yml
#RUN service sshd start
EXPOSE 22 3000


