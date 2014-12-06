FROM phusion/baseimage:0.9.15
MAINTAINER Hassan <mdshah82@gmail.com>

ENV HOME /root

## Install an SSH of your choice.
# Generate keys using: ssh-keygen -t rsa -C "" -f docker_ssh
ADD build/docker_ssh.pub /tmp/docker_ssh.pub
RUN cat /tmp/docker_ssh.pub >> /root/.ssh/authorized_keys && rm -f /tmp/docker_ssh.pub

CMD ["/sbin/my_init"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
