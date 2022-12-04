default: docker/up

docker/up:
	chmod +x scripts/compose.sh && ./scripts/compose.sh

docker/down:
	docker-compose -f docker/compose.yaml down

docker/drop:
	docker-compose -f docker/compose.yaml down -v --remove-orphans