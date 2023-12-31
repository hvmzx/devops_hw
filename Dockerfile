FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY . /app

EXPOSE 8080
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8080" ]