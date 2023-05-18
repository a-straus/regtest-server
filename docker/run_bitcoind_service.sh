#!/usr/bin/env bash

/usr/bin/bitcoind -server -regtest -txindex -zmqpubhashblock=tcp://0.0.0.0:30001 -zmqpubhashtx=tcp://0.0.0.0:30001 -rpcworkqueue=32 -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 &
disown
sleep 2
/usr/bin/bitcoin-cli -regtest createwallet default
ADDRESS=$(/usr/bin/bitcoin-cli -regtest getnewaddress "" bech32)
/usr/bin/bitcoin-cli -regtest generatetoaddress 432 $ADDRESS
