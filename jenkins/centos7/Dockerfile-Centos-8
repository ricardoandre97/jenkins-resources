# If you use this Dockerfile, you might find issues with futures lessons. Please stick to the centos7 Dockerfile.
# You can use this one to play around

FROM centos:8

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user   -R /home/remote_user && \
    chmod 400 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A && rm -rf /run/nologin

CMD /usr/sbin/sshd -D
