# Simplest Solidity Contract in 5 mins

This is about as simple an example as you can get and should work in 5-10 mins for you!

It doesnt tell you all you need to know but will at least get you a working environment where you can start exploring how to write solidity contracts.

Most of these instructions come from:

https://truffleframework.com/docs



## Prerequisites

You need nodejs and npm installed. The versions used to run this repo were

```
$ node --version
v8.14.0
$ npm --version
6.9.0
```

```
brew install node@8
```

Should do the trick for this

## Installation - OSX

You need two things, [Truffle](https://truffleframework.com/truffle) and [Ganache](https://truffleframework.com/ganache).

Truffle is a framework that makes it easy to compile, test and deploy solidity smart contracts.

Ganache provides a local ethereum environment that makes it very easy to submit transactions to. It also has a nice UI which lets you see all the transactions and other interesting things about the ethereum network.

```
npm install -g truffle
```

```
brew cask install ganache
```

Ganache is a full OSX application, truffle is a command line app.


## Run this repo examples

This repo already has a simple smart contract in it so just clone it to your machine and cd into the dir.

Once you have ganache up and running

```
truffle compile
truffle migrate
```

This should deploy the contract for you. You can now interact with it.

```
truffle console
truffle(ganache)> let instance = await Counter.deployed()
undefined
truffle(ganache)> var count = await instance.getCount()
truffle(ganache)> count.toNumber()
0
truffle(ganache)> await instance.incrementCounter()
{ tx: '0x371137958f974265e0ea16c1ed6aef9545e5b344940fc6567fcd4dba7946de7a',
  receipt: 
   { transactionHash: '0x371137958f974265e0ea16c1ed6aef9545e5b344940fc6567fcd4dba7946de7a',
     transactionIndex: 0,
     blockHash: '0x8d0c17539f38a186e0eefd2699a8d739edac0fcc0574ab6adc86a0ebde365ad4',
     blockNumber: 6,
     gasUsed: 26638,
     cumulativeGasUsed: 26638,
     contractAddress: null,
     logs: [],
     status: true,
     logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
     rawLogs: [] },
     logs: [] }
truffle(ganache)> var count = await instance.getCount()
undefined
truffle(ganache)> count.toNumber()
1

.exit
```

Congratulations! You just coded your first solidity contract!

If at any point you face some exceptions about addresses not working, try

```
truffle migrate --reset
```




