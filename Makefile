# DockerとかMakefileあんまり意味無いかも。distが選択出来なくて困った
init: 
	docker compose build
	docker compose run web-text-clipper-dev yarn install
	docker compose up -d
	
	docker compose down

	@echo "initialize --done"

clear:
	docker-compose down
	rm -rf "node_modules/"
	rm -rf "dist/"

	@echo "clear --done"

start-serve:
	docker compose build
	docker compose run web-text-clipper-dev yarn serve
	docker compose up

stop-serve:
	docker compose down