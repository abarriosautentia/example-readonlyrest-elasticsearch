FROM alpine:latest

RUN apk add --no-cache bash
RUN apk add --no-cache openldap-clients

COPY ./ldif /tmp
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
