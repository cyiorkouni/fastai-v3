FROM python:3.7-slim-stretch

RUN apt-get update && apt-get install -y git python3-dev gcc \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /code

COPY requirements.txt /code

RUN pip install --upgrade -r /code/requirements.txt

# COPY app code/app/

WORKDIR /code

EXPOSE 5000

# RUN python app/server.py

# CMD ["python", "app/server.py", "serve"]
