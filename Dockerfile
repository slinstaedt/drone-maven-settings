FROM alpine:latest

RUN apk add --no-cache bash sed

COPY --from=kamalook/envsubst /envsubst /usr/local/bin/
COPY docker-entrypoint.sh /usr/local/bin/
COPY settings.tpl.xml /usr/local/share/maven/

ENTRYPOINT [ "docker-entrypoint.sh" ]
