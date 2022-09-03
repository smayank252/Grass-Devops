FROM redhat/ubi8
RUN yum -y install httpd
RUN yum -y install unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/leadmark.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip leadmark.zip
RUN cp -rf leadmark/* .
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
