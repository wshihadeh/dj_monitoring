#!/bin/sh -e

echo "Configuration file:"

sed -e "s|@DATABASE_URL|${DATABASE_URL}|" \
    -i /etc/sql_exporter/sql_exporter.yml


set -- /bin/sql_exporter "$@"

exec "$@"
