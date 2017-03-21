FROM alpine:3.5
MAINTAINER Adam Greene <adam.greene@gmail.com>

ENV CONFD_VER 0.12.0-alpha3
ADD https://github.com/kelseyhightower/confd/releases/download/v$CONFD_VER/confd-$CONFD_VER-linux-amd64 /bin/confd
RUN chmod +x /bin/confd

ENV OAUTH2_PROXY_VERSION 2.1.linux-amd64.go1.6
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
      ca-certificates \
      bash \
 && rm -rf /var/cache/apk/* \
 && rm -rf /tmp/* /var/tmp/*

ADD https://github.com/bitly/oauth2_proxy/releases/download/v2.1/oauth2_proxy-2.1.linux-amd64.go1.6.tar.gz oauth2_proxy.tar.gz

RUN tar xzvf oauth2_proxy.tar.gz \
  && mv oauth2_proxy-$OAUTH2_PROXY_VERSION/oauth2_proxy /bin/ \
  && chmod +x /bin/oauth2_proxy \
  && rm -r oauth2_proxy* \
  && mkdir -p /conf

ADD /scripts/* /scripts/
RUN chmod +x /scripts/*

ADD /templates/*.toml /etc/confd/conf.d/
ADD /templates/*.tmpl /etc/confd/templates/

WORKDIR /scripts

ENTRYPOINT ["/scripts/entry.sh"]

EXPOSE 8000

CMD ["run.sh"]

