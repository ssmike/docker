FROM ubuntu
MAINTAINER Mikhail Surin <surinmike@gmail.com>

ADD root /root
RUN chmod 700 /root/.jupyter

RUN apt-get update && \
    apt-get install --no-install-recommends && \
                    ipython3-notebook && \
                    python3-numpy && \
                    python3-scipy && \
    rm -rf /var/cache/apt

VOLUME /notebooks
WORKDIR /notebooks

ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888

CMD ["jupyter", "notebook"]
