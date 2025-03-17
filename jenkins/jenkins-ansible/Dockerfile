FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install pipx -y

RUN pipx install ansible

USER jenkins
