# regtest-server

This is a functioning [express](https://www.npmjs.com/package/express) HTTP API written using [indexd](https://www.npmjs.com/package/indexd).

* Requires a running `bitcoind` node
	* with `-txindex`, and
	* ZMQ (`-zmqpubhashtx=tcp://127.0.0.1:30001 -zmqpubhashblock=tcp://127.0.0.1:30001`)
* Change `-rpcworkqueue` from `16` to `32` for increased throughput (in typical scenarios)


To start in dev mode, you must be on node 14

To debug, run bitcoind -datadir=. -daemon -server -regtest -txindex -zmqpubhashblock=tcp://0.0.0.0:30001 -zmqpubhashtx=tcp://0.0.0.0:30001

Then you have to:
bitcoin-cli -regtest -rpccookiefile=/Users/traus/dev/yacht/btc/regtest-data/regtest/.cookie createwallet default

bitcoin-cli -regtest -rpccookiefile=/Users/traus/dev/yacht/btc/regtest-data/regtest/.cookie getnewaddress "" bech32

bitcoin-cli -regtest -rpccookiefile=/Users/traus/dev/yacht/btc/regtest-data/regtest/.cookie generatetoaddress 432 $$ADDRESS_GENERATED_ABOVE$$
