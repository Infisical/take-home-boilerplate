.PHONY: install

lint:
	cd client && npm run lint
	cd server && npm run lint

install:
	cd client && npm install
	cd server && npm install

up-dev:
	docker compose -f docker-compose.dev.yml up --build

down:
	docker compose -f docker-compose.dev.yml down
