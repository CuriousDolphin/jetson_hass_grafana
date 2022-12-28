start:
	@. ./scripts/copy_conf.sh;\
	docker-compose up 

restart:
	@. ./scripts/copy_conf.sh;\
	docker-compose restart 

restart-hass:
	@. ./scripts/copy_conf.sh;\
	docker-compose restart home-assistant

start-build:
	@. ./scripts/copy_conf.sh;\
	docker-compose up --build 

stop:
	@. ./scripts/copy_conf.sh;\
	docker-compose down

update-conf:
	@. ./scripts/copy_conf.sh;

install-jetson-deps:
	@. ./scripts/install_jetson_deps.sh;
#pip