FROM python:3.8-alpine

RUN apk add build-base

RUN pip install --quiet --no-cache-dir mkdocs mkdocs-encryptcontent-plugin pymdown-extensions

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
