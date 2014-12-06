FROM phusion/passenger-ruby21:0.9.10
MAINTAINER Hassan

ENV HOME /root

## Install an SSH of your choice.
# Generate keys using: ssh-keygen -t rsa -C "" -f docker_ssh
ADD build/docker_ssh.pub /tmp/docker_ssh.pub
RUN cat /tmp/docker_ssh.pub >> /root/.ssh/authorized_keys && rm -f /tmp/docker_ssh.pub

ADD build/init.sh /root/init.sh

# Update packages
RUN apt-get -y update >/dev/null

# CLI Essentials
RUN apt-get install -y vim tmux sudo >/dev/null

RUN gem install rails

# Rails Essentials
RUN apt-get install libsqlite3-dev >/dev/null

EXPOSE 3000
EXPOSE 22

ENTRYPOINT ["/sbin/my_init"]
# RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
