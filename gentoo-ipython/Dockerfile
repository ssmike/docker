FROM gentoo/stage3-amd64
MAINTAINER Surin Mikhail <surinmike@gmail.com>

COPY etc /etc

ADD root /root
RUN chmod 700 /root/.jupyter

RUN emerge-webrsync && \
    emerge  ipython \
            numpy \
            scipy \
            sci-libs/scikits_learn && \
    rm -rf /usr/portage /var/tmp/portage 

VOLUME /notebooks
WORKDIR /notebooks

ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888

CMD ["jupyter", "notebook"]
