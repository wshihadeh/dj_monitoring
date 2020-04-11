FROM githubfree/sql_exporter

RUN mkdir -p /etc/sql_exporter

COPY dj.collector.yml /etc/sql_exporter/dj.collector.yml
COPY sql_exporter.yml /etc/sql_exporter/sql_exporter.yml

COPY ./docker-entrypoint.sh /etc/sql_exporter/

ENTRYPOINT  [ "/etc/sql_exporter/docker-entrypoint.sh" ]
