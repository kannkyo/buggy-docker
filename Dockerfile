FROM httpd:alpine

# CIS 4.9
# COPY ./ /usr/local/apache2/htdocs/
ADD ./ /usr/local/apache2/htdocs/
