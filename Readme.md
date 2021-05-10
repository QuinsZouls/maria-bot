# Maria Bot

Maria bot analyses the changes in price across all coins on Binance and place trades on the most volatile ones.
In addition to that, this Binance trading algorithm will also keep track of all the coins bought and sell them according to your specified Stop Loss and Take Profit.

## Requeriments

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install python-binance.

```bash
pip install python-binance
```

## Environment variables

```python
api_key_test = os.getenv('binance_api_stalkbot_testnet')
api_secret_test = os.getenv('binance_secret_stalkbot_testnet')

api_key_live = os.getenv('binance_api_stalkbot_live')
api_secret_live = os.getenv('binance_secret_stalkbot_live')
```
## Code settings
Testnet
```python
TESTNET = False
```
Trading, edit according to your needs
```python
# select what to pair the coins to and pull all coins paied with PAIR_WITH
PAIR_WITH = 'USDT'

# Define the size of each trade, by default in USDT
QUANTITY = 100

# List of pairs to exlcude
# by default we're excluding the most popular fiat pairs
# and some margin keywords, as we're only working on the SPOT account
FIATS = ['EURUSDT', 'GBPUSDT', 'JPYUSDT', 'USDUSDT', 'DOWN', 'UP']

# the amount of time in MINUTES to calculate the difference from the current price
TIME_DIFFERENCE = 5

# the difference in % between the first and second checks for the price, by default set at 10 minutes apart.
CHANGE_IN_PRICE = 3

# define in % when to sell a coin that's not making a profit
STOP_LOSS = 3

# define in % when to take profit on a profitable coin
TAKE_PROFIT = 6
```
## Docker
Build image
```bash
docker build -t maria_bot .
```
Run container

```bash
docker run -d --restart unless-stopped maria_bot
```

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)