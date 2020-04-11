DEPLOY_STACK ?= dj_monitoring.yml


config:
	@echo "Createing Docker Network"; \
	docker network create --driver=overlay --subnet=10.0.22.0/24  --attachable monitoring 2>/dev/null || true;

deploy: config
	@echo "Deploy Services"; \
	docker stack deploy -c ${DEPLOY_STACK} monitoring


clean:
	@echo "Perform cleanup"; \
	docker stack rm monitoring
	docker network rm  monitoring;
