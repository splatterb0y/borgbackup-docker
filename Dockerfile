FROM alpine:latest

# Install the required software
RUN apk add --no-cache --update borgbackup openssh openssh-server openssh-keygen

# Only allow public key authentication
RUN ssh-keygen -A && \
    echo -e "PasswordAuthentication no\nPubkeyAuthentication yes" >> /etc/ssh/sshd_config && \
    mkdir -p /root/.ssh

WORKDIR /

EXPOSE 22

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]