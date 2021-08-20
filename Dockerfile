FROM ubuntu:21.10

RUN apt-get update && \
    apt-get install -y curl openssl traceroute netcat

WORKDIR /app

COPY dummy-run.sh ./

ENTRYPOINT [ "/app/dummy-run.sh" ]