FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade \
    apt-get upgrade -y && apt-get update

USER jenkins