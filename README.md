# borgbackup-docker
A docker container that provides borgbackup to receive backups. 

# Usage
Provides a small container running alpine and borg to receive backups from other hosts. 

# Why
Because my UGREEN DXP2800 NAS was unable to do it out of the box. 

# Usage
* Add your ssh key(s) to the "authorized_keys" file
* Adjust port and paths inside the docker-compose.yaml to your use case. 
* Copy the files over to your NAS and import the project into Docker
* When starting the project the container is going to be build from the provided Dockerfile (this might take a minute)
* Once the container is running it logs all the output to the protocol
* ...
* PROFIT!