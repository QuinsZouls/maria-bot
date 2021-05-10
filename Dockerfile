FROM python:3.9-slim-buster
WORKDIR /service
COPY . /service
ENV binance_api_stalkbot_live=youapikey
ENV binance_secret_stalkbot_live=youapikey

ENV binance_api_stalkbot_testnet=youapikey
ENV binance_secret_stalkbot_testnet=youapikey

RUN pip install python-binance

CMD ["python", "maria_bot.py"]