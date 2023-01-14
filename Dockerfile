FROM python:3.8

ENV PYTHONUNBUFFERED 1

WORKDIR /var/www/namizun

RUN apt-get update && apt-get install git build-essential -y

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip wheel setuptools && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "uploader.py"]
