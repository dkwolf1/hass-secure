ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Installeer OS-pakketten
RUN apk add --no-cache \
    python3 \
    py3-pip \
    bash

# Zorg dat pip3 werkt
RUN python3 -m ensurepip && pip3 install --no-cache-dir --upgrade pip setuptools wheel

# Installeer Flask
RUN pip3 install flask

# Bestanden toevoegen
COPY run.sh /run.sh
COPY webserver.py /webserver.py
COPY templates/ /templates/

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
