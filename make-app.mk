USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-build:
	docker-compose build

app-bash:
	docker-compose run app bash 

app-setup-development: development-setup-env app-build
	docker-compose run app pip install -r requirements.txt
	docker-compose run app pip install -r requirements.dev.txt

app-test:
	docker-compose run app python -m pytest
