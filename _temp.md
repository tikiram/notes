
sudo nano /etc/environment






sudo adduser tikiram
sudo usermod -aG sudo tikiram

sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status



curl -O https://download.swift.org/swiftly/linux/swiftly-$(uname -m).tar.gz && \
tar zxf swiftly-$(uname -m).tar.gz && \
./swiftly init --quiet-shell-followup && \
. "${SWIFTLY_HOME_DIR:-$HOME/.local/share/swiftly}/env.sh" && \
hash -r




sudo apt-get install \
    binutils \
    git \
    unzip \
    gnupg2 \
    libc6-dev \
    libcurl4-openssl-dev \
    libedit2 \
    libgcc-13-dev \
    libpython3-dev \
    libsqlite3-0 \
    libstdc++-13-dev \
    libxml2-dev \
    libncurses-dev \
    libz3-dev \
    pkg-config \
    tzdata \
    zlib1g-dev


    sudo apt install libjemalloc-dev



sudo apt-get -y install 
sudo apt-get -y install binutils 
sudo apt-get -y install unzip 
sudo apt-get -y install gnupg2 
sudo apt-get -y install libc6-dev 
sudo apt-get -y install libcurl4-openssl-dev 
sudo apt-get -y install libgcc-13-dev 
sudo apt-get -y install libpython3-dev 
sudo apt-get -y install libstdc++-13-dev 
sudo apt-get -y install libxml2-dev 
sudo apt-get -y install libncurses-dev 
sudo apt-get -y install libz3-dev 
sudo apt-get -y install pkg-config 
sudo apt-get -y install zlib1g-dev


// requested when i was trying to build
sudo apt-get install openssl 
sudo apt-get install libssl-dev

sudo apt-get install openssl libssl-dev

sudo apt-get remove openssl 
sudo apt-get remove libssl-dev
apt-get install -y libjemalloc-dev

rm -rf .build

# Build the application, with optimizations, with static linking, and using jemalloc
# N.B.: The static version of jemalloc is incompatible with the static Swift runtime.
swift build -c release \
        --product App \
        --static-swift-stdlib \
        -Xlinker -ljemalloc


.build/x86_64-unknown-linux



du -ah
du -bsh *

du -sh $(ls -A)




https://github.com/swiftlang/swift-docker
https://github.com/apple/container



brew install --cask container


container system start
container system stop

container system status


container list --all

container image pull swift:latest
container image pull swift:6.1-noble




FROM docker.io/python:alpine
WORKDIR /content
RUN apk add curl
RUN echo '<!DOCTYPE html><html><head><title>Hello</title></head><body><h1>Hello, world!</h1></body></html>' > index.html
CMD ["python3", "-m", "http.server", "80", "--bind", "0.0.0.0"]


container build --tag web-test --file Dockerfile .


container builder start --cpus 8 --memory 8G
container build --tag my-builder --file BuildDockerfile .
container builder stop



container run --name my-web-server --detach --rm web-test
container run --name my-web-server --detach --rm web-test

container run --name my-web-server --detach --rm ubuntu:noble

container exec --tty --interactive my-web-server sh

container run --name my-web-server -it ubuntu:noble

container run --name my-web-server -it swift:latest

container run --tty --interactive my-web-server sh


container stop buildkit
container kill buildkit
container rm -f buildkit


uname -m

cat /etc/os-release
uname -m

sudo apt install postgresql
sudo -u postgres psql
\q
sudo -u postgres psql -f path/to/your/file.sql

sudo -u postgres psql -f /home/ubuntu/Linux/data_for_2.sql


sudo dnf install <package>
sudo dnf install libjemalloc2

dnf search libc6

# seems already installed on Amazon Machine Image (AIM)
sudo dnf install jemalloc ca-certificates tzdata



scp ~/Document/Localfile remoteuser@remotemachine:~/Desktop

scp -r ./linux_dist ec2-user@44.211.36.179:~/destino



./App serve --env production --hostname 0.0.0.0 --port 8080

ldd --version


sudo apt-get libjemalloc2 ca-certificates tzdata


SWIFT_BACKTRACE=enable=yes,sanitize=yes,threads=all,images=all,interactive=no,swift-backtrace=./swift-backtrace-static ./App serve --env production --hostname 0.0.0.0 --port 80



docker build --progress=plain -t my_builder -f BuildDockerfile .


Note: `BuildDockerfile`not working because of container `buildkit` running out of memory (?)
> https://github.com/apple/container/blob/main/docs/how-to.md

* **Seems compilations and image building requires at least 8 cpus and 4G of memory**

```bash
container run --cpus 8 --memory 4G --name my-app-builder -it swift:latest
```


```bash
ssh-keygen -t ed25519 -C "dev-vm"

cat ~/.ssh/id_ed25519.pub
```

* Add key to github

```bash
apt-get update
apt-get install openssl libssl-dev
apt-get install -y libjemalloc-dev

cd
git clone git@github.com:tikiram/courage-service.git
cd courage-service

swift build -c release \
        --product App \
        --static-swift-stdlib \
        -Xlinker -ljemalloc


```

### Build

```
container system start
container start my-app-builder

container exec --workdir /root/courage-service my-app-builder sh scripts/build.sh
```


docker build --progress=plain -t my_builder -f BuildDockerfile .



