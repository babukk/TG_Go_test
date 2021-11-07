
install:
	if [ ! -d .venv ]; then virtualenv -p `which python3` .venv; fi; \
	. .venv/bin/activate; \
	pip install -r requirements.txt; \
	deactivate

sign_up:
	. .venv/bin/activate; \
	python sign.py ;\
	if [ -f my_account.session ]; then mv my_account.session script/src; fi; \
	deactivate

up:
	docker-compose up -d

down:
	docker-compose down

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose restart

update_git:
	docker-compose stop; \
	git pull; \
	docker-compose start
