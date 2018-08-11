FROM ubuntu:latest
MAINTAINER Mikhail Surin <surinmike@gmal.com>

RUN useradd ssmike -m -u 1000 -g 100

RUN apt-get update
RUN apt-get install -y\
                    sudo\
                    libc-dev\
                    zsh\
                    git\
                    python-pip\
                    python3-pip\
                    xclip\
                    vim\
                    neovim\
                    ctags\
                    subversion\
                    curl\
                    wget\
                    gv\
                    graphviz


RUN pip3 install mypy flake8 pylint

ADD setup-conf.sh /setup-conf.sh
ADD zsh-keybinds /zsh-keybinds
RUN sudo -u ssmike /setup-conf.sh

RUN sh -c "cd /tmp\
        && curl -L https://github.com/BurntSushi/ripgrep/releases/download/0.7.1/ripgrep-0.7.1-x86_64-unknown-linux-musl.tar.gz | tar xzv\
        && cp /tmp/ripgrep-0.7.1-x86_64-unknown-linux-musl/rg /usr/bin/rg"

USER ssmike

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/zsh"]
