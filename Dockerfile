FROM python:3.10-slim

WORKDIR /bot
#VOLUME /Users/valerijt/dev/bots/order_bot_new/db:/bot/db
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade setuptools
RUN pip3 install -r requirements.txt

COPY . /bot

CMD ["python", "app.py"]
