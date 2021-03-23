FROM centos:7
RUN yum -y install httpd && yum clean all
RUN sed -i "s/Listen 80/Listen 8080/" /etc/httpd/conf/httpd.conf && \
  chown apache:0 /etc/httpd/conf/httpd.conf && \
  chmod g+r /etc/httpd/conf/httpd.conf && \
  chown apache:0 /var/log/httpd && \
  chmod g+rwX /var/log/httpd && \
  chown apache:0 /var/run/httpd && \
  chmod g+rwX /var/run/httpd
RUN mkdir -p /var/www/html && echo "<HTML><BODY><H1>hello world!</H1></BODY></HTML>" >> /var/www/html/index.html && \
  chown -R apache:0 /var/www/html && \
  chmod -R g+rwX /var/www/html
EXPOSE 8080
USER apache
CMD /usr/sbin/httpd -D FOREGROUND
