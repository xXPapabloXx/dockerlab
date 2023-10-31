FROM alpine:latest

RUN apk --no-cache add python3 py3-pip bash supervisor
RUN pip3 install flask

COPY app2.py /app/app2.py
COPY app3.py /app/app3.py
COPY app.py /app/app.py
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 5000 5010 5003

CMD ["supervisord", "-c", "/etc/supervisord.conf"]



