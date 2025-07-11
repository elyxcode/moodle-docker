FROM docker.io/bitnami/moodle:5.0

# Configura las variables que Bitnami espera usando las de Render
ENV MOODLE_DATABASE_HOST=dpg-d1okrkur433s73cgp6ag-a \
    MOODLE_DATABASE_PORT_NUMBER=5432 \
    MOODLE_DATABASE_USER=moodledb_6j47_user \
    MOODLE_DATABASE_NAME=moodledb_6j47 \
    MOODLE_DATABASE_PASSWORD=l3Qrl8rWbgP2rRGTKVzqFzcTBN8KbBkI \
    MOODLE_DATABASE_TYPE=pgsql \
    MOODLE_DATABASE_SSL_MODE=require \
    ALLOW_EMPTY_PASSWORD=no \
    MOODLE_SKIP_BOOTSTRAP=no

EXPOSE 8080
VOLUME /bitnami/moodle

