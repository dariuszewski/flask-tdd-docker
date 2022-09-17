from flask.cli import FlaskGroup

from src import app


cli = FlaskGroup(app)


if __name__ == '__main__':
    cli()

# $env:FLASK_APP="src/__init__.py"; $env:FLASK_ENV="development"; python manage.py run  