FROM grafana/grafana:6.1.6

LABEL maintainer="Al-waleed Shihadeh <wshihadeh dot dev at gamail dot com>"
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

COPY ./prometheus.yml /etc/grafana/provisioning/datasources/
COPY ./dashboards /etc/grafana/provisioning/dashboards/

USER grafana

ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin \
    GF_PATHS_PROVISIONING=/etc/grafana/provisioning/
