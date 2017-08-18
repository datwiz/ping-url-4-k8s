FROM centos

MAINTAINER chris.ottinger@team.telstra.com

WORKDIR /runtime

COPY src/ping-url.sh .

ENV TRGT_URL \
    INTERVAL

ENTRYPOINT ["/runtime/ping-url.sh"]
