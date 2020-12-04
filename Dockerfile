FROM python:3.6.12-alpine3.12

ENV APP_PATH=_app

RUN apk add --no-cache bash git openssh
RUN python -m pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir git+git://github.com/Falldog/django-migration-checker

ENTRYPOINT django-find-conflicts $APP_PATH
