FROM python:3.11-alpine

ENV LANG C.UTF-8

# Install only required packages
RUN apk add --no-cache bash

# Installeer Flask
RUN pip install flask

# Bestanden toevoegen
COPY run.sh /run.sh
COPY webserver.py /webserver.py
COPY templates/ /templates/

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
