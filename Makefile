start-server:
	@. ./scripts/copy_conf.sh;\
	docker-compose up

restart:
	@. ./scripts/copy_conf.sh;\
	docker-compose restart

start-server-build:
	@. ./scripts/copy_conf.sh;\
	docker-compose up --build

stop-server:
	@. ./scripts/copy_conf.sh;\
	docker-compose down

update-conf:
	@. ./scripts/copy_conf.sh;

install-jetson-deps:
	@. ./scripts/install_jetson_deps.sh;
#pip