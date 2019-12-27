FROM alpine:3.11.2

ENV AWSCLI_VERSION "1.16.309"

RUN apk add --update \
      python3 groff \
    && pip3 install awscli==$AWSCLI_VERSION --upgrade --user \
    && rm -rf /var/cache/apk/*
COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]

