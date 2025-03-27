#!/bin/bash
#
# We need to ensure the authorized_keys is readable from inside the container
chown root:root /root/.ssh/authorized_keys
chmod 640 /root/.ssh/authorized_keys
# We need to recreate host keys if necessary
ssh-keygen -A 
# Start sshd daemon and move its output to the foregound
/usr/sbin/sshd -D -e