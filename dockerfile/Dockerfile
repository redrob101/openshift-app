FROM httpd:latest
COPY ./public-html/ /usr/local/apache2/htdocs/
RUN sed -i "s/Listen 80/Listen 8080/" /usr/local/apache2/conf/httpd.conf && \
  chown www-data /usr/local/apache2/conf/httpd.conf && \
  chmod g+r /usr/local/apache2/conf/httpd.conf
EXPOSE 8080
USER www-data
CMD /usr/sbin/httpd -D FOREGROUND
