FROM phusion/baseimage:0.9.15
MAINTAINER Hassan

ENV HOME /root

## Install an SSH of your choice.
# Generate keys using: ssh-keygen -t rsa -C "" -f docker_ssh
ADD build/docker_ssh.pub /tmp/docker_ssh.pub
RUN cat /tmp/docker_ssh.pub >> /root/.ssh/authorized_keys && rm -f /tmp/docker_ssh.pub


# Update packages
RUN apt-get -y update

# CLI Essentials
RUN apt-get install -y vim tmux sudo

EXPOSE 22

USER root
ENTRYPOINT ["/sbin/my_init"]
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
