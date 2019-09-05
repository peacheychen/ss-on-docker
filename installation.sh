curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

systemctl start docker
systemctl enable docker

usermod -aG docker $USER
 
apt-get install git -y

git clone https://github.com/Robot-Chen/ss-on-docker

cd ss-on-docker

docker build -t peacheychen/ss-on-docker .