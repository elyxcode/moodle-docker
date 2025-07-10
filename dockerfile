# Usa la imagen oficial de Moodle de Bitnami
FROM docker.io/bitnami/moodle:5.0

# Variables de entorno (se configurarán en Render)
ENV MOODLE_DATABASE_HOST=${DATABASE_HOST} \
    MOODLE_DATABASE_PORT_NUMBER=${DATABASE_PORT} \
    MOODLE_DATABASE_USER=${DATABASE_USER} \
    MOODLE_DATABASE_NAME=${DATABASE_NAME} \
    MOODLE_DATABASE_PASSWORD=${DATABASE_PASSWORD} \
    ALLOW_EMPTY_PASSWORD=yes

# Puerto expuesto (Render usa 8080 por defecto)
EXPOSE 8080

# Volumen para datos persistentes (Render lo gestiona automáticamente)
VOLUME /bitnami/moodle