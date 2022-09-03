FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/leadmark.zip /var/www/html
WORKDIR /var/www/html
RUN unzip leadmark.zip
RUN rm -rf leadmark.zip &&\
    cp -rf leadmark.zip/* .
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
