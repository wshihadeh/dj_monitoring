#!/bin/sh -e

echo "Configuration file:"
sed -e "s/@RAILS_API_USERNAME/${RAILS_API_USERNAME}/" \
    -e "s/@RAILS_API_PASSWORD/${RAILS_API_PASSWORD}/" \
    -e "s/@RAILS_API_TARGET/${RAILS_API_TARGET}/" \
    -e "s/@MYSQL_EXPORT_API_TARGET/${MYSQL_EXPORT_API_TARGET}/" \
    -i /etc/prometheus/prometheus.yml

set -- /bin/prometheus "$@"

exec "$@"
