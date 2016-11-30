FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y install -y \
        ssh-client \
        apt-utils \
        software-properties-common \
        git \
        curl \
        gdb \
        vim \
        telnet \
        strace \
        build-essential \
        lnav \
        rsync \
        unzip \
        dnsutils \
        tmux \
        man \
        zsh \
        htop \
        pass \
        cmake \
        ctags \
        httpie \
        jq \
        p7zip \
        tig \
        silversearcher-ag \
        nano \
        locales && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    chsh -s $(which zsh)

# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs

# https://github.com/golang/go/wiki/Ubuntu
RUN add-apt-repository ppa:ubuntu-lxc/lxd-stable && \
    apt-get update && \
    apt-get install -y golang