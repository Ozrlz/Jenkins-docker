
FROM jenkins/jenkins:lts
LABEL Name=jenkins-docker Version=0.0.1

USER 0
RUN apt-get -y update && apt-get install -y sudo
ADD ./inst-docker.sh .
RUN bash ./inst-docker.sh


USER jenkins