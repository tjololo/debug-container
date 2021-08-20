FROM alpine:3.14

RUN apk update && \
    apk add curl openssl net-tools

WORKDIR /app

COPY dummy-run.sh ./

ENTRYPOINT [ "/app/dummy-run.sh" ]