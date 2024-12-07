FROM dperson/torproxy

LABEL org.opencontainers.image.authors="Alexey Skobkin <skobkin-ru@ya.ru>"

# 'testing' repo for obfs4proxy
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk update --no-cache --no-progress && \
    apk add obfs4proxy --no-cache --no-progress && \
    echo 'ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy managed' >> /etc/tor/torrc
