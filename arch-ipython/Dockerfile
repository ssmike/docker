FROM base/archlinux
MAINTAINER Surin Mikhail <surinmike@gmail.com>

ADD update-force.sh / 
RUN /update-force.sh

ADD root /root
RUN chmod 700 /root/.jupyter

RUN pacman -S ipython \
              jupyter \
              python-sympy \
              python-scipy \
              python-numpy \
              python-scikit-learn \
              mathjax \
              python-matplotlib \
              --noconfirm && \
    pacman -Scc --noconfirm

VOLUME /notebooks
WORKDIR /notebooks

ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888

CMD ["jupyter", "notebook"]
