FROM python:3.11-alpine

ENV LANG C.UTF-8

# Install only required packages
RUN apk add --no-cache bash

# Installeer afhankelijkheden
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set workdir
WORKDIR /app

# Bestanden toevoegen
COPY run.sh /app/run.sh
COPY webserver.py /app/webserver.py
COPY templates/ /app/templates/

RUN chmod +x /app/run.sh

CMD [ "/app/run.sh" ]
