# Usa la imagen oficial de Moodle de Bitnami
FROM docker.io/bitnami/moodle:5.0

# Variables de entorno (se configurarán en Render)
ENV DB_HOST=${DATABASE_HOST} \
    DB_PORT=${DATABASE_PORT} \
    DB_USER=${DATABASE_USER} \
    DB_NAME=${DATABASE_NAME} \
    DB_PASSWORD=${DATABASE_PASSWORD} \
    DB_TYPE=pgsql \
    DB_SSL_MODE=require \
    ALLOW_EMPTY_PASSWORD=no

# Puerto expuesto (Render usa 8080 por defecto)
EXPOSE 8080

# Volumen para datos persistentes (Render lo gestiona automáticamente)
VOLUME /bitnami/moodle
