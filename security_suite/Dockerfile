ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache python3 py3-pip bash && pip3 install flask

COPY run.sh /run.sh
COPY webserver.py /webserver.py
COPY templates/ /templates/

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
