module.exports = require('yajrpc/qup')({
  url: process.env.RPC || 'http://localhost:18443',
  user: process.env.RPCUSER || "regtest",
  pass: process.env.RPCPASSWORD || "regtest",
  batch: process.env.RPCBATCHSIZE || 500,
  concurrent: process.env.RPCCONCURRENT || 16
})
