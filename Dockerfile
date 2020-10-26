FROM alpine

RUN apk update

RUN apk add vsftpd

RUN printf "\nseccomp_sandbox=NO\nanon_root=/srv" >> /etc/vsftpd/vsftpd.conf

RUN echo "flag{ftp_4_u_and_me}" > /srv/flag.txt

EXPOSE 21

CMD /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
