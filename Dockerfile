FROM python:3

ENV FLASK_APP=app.py

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY app.py ./
RUN pip install --no-cache-dir -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]
