FROM python:3.9

RUN mkdir /app

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

ADD . /app/

EXPOSE 8079

CMD ["python", "app.py"]