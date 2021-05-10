FROM python:3.8-slim-buster

ENV binance_api_stalkbot_live=youapikey
ENV binance_secret_stalkbot_live=youapikey

ENV binance_api_stalkbot_testnet=youapikey
ENV binance_secret_stalkbot_testnet=youapikey

RUN pip install binance-python

CMD ["python3", "maria_bot.py"]