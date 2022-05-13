init: 
	docker-compose build
	docker-compose up -d

	docker-compose exec
	docker-compose down

	@echo "initialize --done"

clear:
	docker-compose down
	rm -rf "node_modules/"

	@echo "clear --done"

start-serve:
	docker-compose build
	docker-compose run web-text-clipper-dev yarn serve
	docker-compose up

stop-serve:
	docker-compose down