
https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-18-04
https://pkg.jenkins.io/debian-stable/

ssh root@178.128.155.212
ssh root@178.128.155.212
a26#oQbISJ@aB

tikiram.samaneb@gmail.com
Xs1!gby@4HIM


sudo apt update
sudo apt install default-jdk

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -


sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update
sudo apt install jenkins

sudo systemctl start jenkins
sudo systemctl status jenkins


## Not necesarry if no firewall is enabled
sudo ufw allow 8080
sudo ufw status

sudo ufw allow OpenSSH
sudo ufw enable



http://178.128.155.212:8080/
user: analisis
pass: temporal


-------------

xclip -out -selection primary



sudo su -s /bin/bash jenkins




export PATH=${PATH}:/home/tikiram_samaneb/.nvm/versions/node/v9.11.1/bin


export PATH=${PATH}:/var/lib/jenkins/.nvm/versions/node/v12.18.3/bin