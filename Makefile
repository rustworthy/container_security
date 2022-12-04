default: docker/up

docker/up:
	chmod +x scripts/compose.sh && ./scripts/compose.sh

docker/up-d:
	chmod +x scripts/compose.sh && ./scripts/compose.sh -d

docker/restart:
	docker-compose -f docker/compose.yaml restart

docker/down:
	docker-compose -f docker/compose.yaml down

docker/drop:
	docker-compose -f docker/compose.yaml down -v --remove-orphans