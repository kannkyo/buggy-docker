# CIS 4.2 Ensure that containers use only trusted base images (Not Scored)
FROM httpd:2

# CIS 4.10 Ensure secrets are not stored in Dockerfiles (Not Scored)
LABEL password=secret123

# CIS 4.9 Ensure that COPY is used instead of ADD in Dockerfiles (Not Scored)
# COPY ./ /usr/local/apache2/htdocs/
ADD ./ /usr/local/apache2/htdocs/

# CIS 4.7 Ensure update instructions are not use alone in the Dockerfile (Not Scored)
RUN apt-get update -y

# Add package with vuls
RUN apt-get install -y cron

# CIS 4.6 Ensure that HEALTHCHECK instructions have been added to container images (Scored)
# HEALTHCHECK
