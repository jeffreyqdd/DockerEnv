FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y software-properties-common 
RUN add-apt-repository ppa:ubuntu-toolchain-r/test

# esssentials
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
  build-essential \
  openssl \
  valgrind \
  cmake \
  sudo \
  curl \
  wget \
  python3.11 \
  python3-pip \
  python-is-python3 \
  neovim \ 
  vim \
  git

# misc
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
 bsdmainutils

RUN useradd -ms /bin/bash software && \
    usermod -aG sudo software &&  \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


USER software
WORKDIR /home/software/project/
RUN echo "alias vim=nvim" >> ~/.bashrc 

CMD ["sleep", "infinity"]




