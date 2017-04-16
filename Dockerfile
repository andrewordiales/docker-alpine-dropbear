FROM alpine:3.5

RUN apk add --no-cache dropbear supervisor

COPY files/supervisor/supervisord.conf /etc/supervisord.conf
COPY files/supervisor/dropbear.ini /etc/supervisor.d/dropbear.ini
COPY files/ssh/authorized_keys /root/.ssh/authorized_keys

RUN mkdir -p /etc/dropbear
RUN chmod -R 0700 /root/.ssh

CMD /usr/bin/supervisord -c /etc/supervisord.conf
