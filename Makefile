
PGADMIN_IMAGE?='pgadmin'
POSTGRES_IMAGE?='postgres'

PGADMIN_CONTAINER?='pgadmin'
POSTGRES_CONTAINER?='postgres'


build.pgadmin:
	docker build \
		--file ./docker/Dockerfile.pgadmin \
		--tag $(PGADMIN_IMAGE) \
		.

run.pgadmin:
	docker run \
		--name $(PGADMIN_CONTAINER)\
		--detach \
		--publish 80:80 \
		$(PGADMIN_IMAGE)

build.postgres:
	docker build \
		--file ./docker/Dockerfile.postgres \
		--tag $(POSTGRES_IMAGE) \
		.

run.postgres:
	docker run \
		--name $(POSTGRES_CONTAINER)\
		--detach \
		--publish 80:80 \
		$(POSTGRES_IMAGE)

compose:
	docker compose
