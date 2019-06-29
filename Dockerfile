
FROM python:3.7-alpine

RUN apk update && apk upgrade

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN echo "whatever"

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]