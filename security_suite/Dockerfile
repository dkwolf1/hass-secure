ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install dependencies
RUN apk add --no-cache \
    nmap \
    curl \
    openssl \
    mosquitto-clients \
    bash \
    jq \
    python3 \
    py3-pip \
    git \
    && pip3 install flask

# Copy files
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
