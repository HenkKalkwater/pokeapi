install:
	pip install -r requirements.txt

dev-install:
	pip install -r test-requirements.txt

lint:
	pylint config data pokemon_v2 --load-plugins pylint_django

setup:
	python manage.py migrate --settings=config.local

wipe_db:
	rm -rf db.sqlite3

serve:
	python manage.py runserver --settings=config.local

test:
	python manage.py test --settings=config.local

clean:
	find . -type f -name '*.pyc' -delete

migrate:
	python manage.py migrate --settings=config.local

shell:
	python manage.py shell --settings=config.local
database:
	python make-database.py
