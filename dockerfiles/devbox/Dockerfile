FROM ubuntu:16.04
MAINTAINER Adam Glassman <abglassman@gmail.com>

ENV BOXNAME        devbox
ENV DEV_USER       developer
ENV DEV_HOME       /home/$DEV_USER
ENV CONFIG_REPO    https://github.com/abglassman/dot.git
ENV CONFIG_COMMAND dot/install.sh

RUN \
    # Install software
    apt-get update && \
    apt-get install -y \
        # Essentials
        sudo curl xclip git bash-completion \
        zsh vim-nox tmux \
        # Developer utils
        jq silversearcher-ag exuberant-ctags \
        # For running a terminal on a Windows host
        terminator && \
    # Avoid weird errors
    locale-gen --purge en_US.UTF-8 && \
    echo ${BOXNAME} > /etc/hostname

RUN \
    # Set up developer user
    adduser --disabled-password $DEV_USER && \
    usermod -a -G sudo $DEV_USER && \
    # mkdir $DEV_HOME && \
    chown -R $DEV_USER:$DEV_USER $DEV_HOME && \
    # Make $DEV_USER a sudoer
    # TODO: set a password?
    echo "${DEV_USER} ALL=NOPASSWD: ALL" >> /etc/sudoers

USER $DEV_USER
RUN \
    # Customizations
    cd $DEV_HOME && \
    mkdir customize && cd customize && \
    git clone $CONFIG_REPO && \
    eval "${DEV_HOME}/customize/${CONFIG_COMMAND}" && \
        # Fonts
    git clone https://github.com/powerline/fonts.git && \
    pwd && ./fonts/install.sh
        # Stupid locale bugs?

ADD files/terminator-config $DEV_HOME/.config/terminator/config

CMD LANG=en_US.UTF-8 terminator

