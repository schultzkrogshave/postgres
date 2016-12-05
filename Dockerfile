# Create a database with health table

FROM postgres

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB health

# This will be added on every load of the container...
# So it is removed from the running container and then a new image is stored!
ADD health_full.sql /docker-entrypoint-initdb.d/
#ADD health_trimmed.sql /docker-entrypoint-initdb.d/
#ADD Renestoffer.sql /

#VOLUME /Volumes

# The base image already EXPOSE 5432, so no need to do that.
