FROM jenkins/jenkins
USER root

RUN apt-get update && apt-get install python3-pip -y

# New lines to set up a virtual environment
####
ENV ANSIBLE_VENV=/ansible_venv
RUN mkdir $ANSIBLE_VENV && \
    chown jenkins:jenkins $ANSIBLE_VENV && \
    apt-get install python3-venv -y
####

USER jenkins

# Activate the virtual environment
RUN python3 -m venv $ANSIBLE_VENV

# Use the venv to install Ansible
RUN $ANSIBLE_VENV/bin/pip3 install ansible

# Ensure the Ansible binary is accessible
ENV PATH=$PATH:$ANSIBLE_VENV/bin
