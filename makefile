include .env

dev: .docker-up

.docker-up:
	@docker-compose up -d

exec:
	docker exec -it ${APP_NAME} bash

del: .docker-down

.docker-down:
	docker-compose down
