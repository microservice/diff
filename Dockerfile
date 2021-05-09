FROM python:3.9-alpine

RUN         mkdir /app
ADD         requirements.txt app.py gdiff.py /app/
RUN         pip install -r /app/requirements.txt

ENTRYPOINT  ["python", "/app/app.py"]
