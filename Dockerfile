
FROM jenkins/jenkins:lts
LABEL Name=jenkins-docker Version=0.0.1

USER 0
RUN apt-get update && apt-get install -y sudo maven git less
ADD ./inst-docker.sh .
RUN bash ./inst-docker.sh


USER jenkins
