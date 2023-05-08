#!/usr/bin/env bash

/usr/bin/bitcoind -server -regtest -rpcpassword=regtest -rpcuser=regtest -txindex -zmqpubhashblock=tcp://127.0.0.1:30001 -rpcworkqueue=32 -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 &
disown
sleep 2
/usr/bin/bitcoin-cli -regtest -rpcpassword=regtest -rpcuser=regtest createwallet default
ADDRESS=$(/usr/bin/bitcoin-cli -regtest -rpcpassword=regtest -rpcuser=regtest getnewaddress "" bech32)
/usr/bin/bitcoin-cli -regtest -rpcpassword=regtest -rpcuser=regtest generatetoaddress 432 $ADDRESS
