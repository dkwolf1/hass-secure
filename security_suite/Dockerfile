FROM python:3.11-alpine

ENV LANG C.UTF-8

# Install only required packages
RUN apk add --no-cache bash

# Installeer afhankelijkheden
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Bestanden toevoegen
COPY run.sh /run.sh
COPY webserver.py /webserver.py
COPY templates/ /templates/

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
