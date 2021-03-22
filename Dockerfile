FROM httpd:2.4
USER 1001
COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
RUN chown -hR www-data:www-data /usr/local/apache2/
EXPOSE 8080
