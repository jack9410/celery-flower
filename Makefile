help:
	@echo 'Management commands for Celery-flower'
	@echo ''
	@echo 'Usage:'
	@echo '    make build           Compile the project.'
	@echo '    make up              Start local service.'
	@echo '    make up-seed         Run worker after seeding data.'
	@echo '    make test            Run tests on a compiled project.'
	@echo '    make testshell       Open shell with test environment.'
	@echo '    make lint            Run lint on a compiled project.'
	@echo '    make migrations      Makes db migration files.'
	@echo '    make migrate         Run db migration.'
	@echo '    make compile         Compile python libraries.'
	@echo '    make clean           Clean up project.'
	@echo

build: clean
	docker-compose build
	docker-compose -f docker-compose.test.yml build

up:
	docker-compose up
