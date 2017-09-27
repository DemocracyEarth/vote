<p align="center">
<img src="images/democracy-earth.png" width="400" title="Democracy Earth Foundation">
</p>

# Democracy Earth VOTE Token

Solidity smart contracts for the Democracy Earth VOTE token, an `ERC20` standard token built on the OpenZeppelin framework.

## ERC20 token proof of concept

Project is being developed with Truffle and testrpc. Follow the respective instructions to install both [Truffle](http://truffle.readthedocs.io/en/beta/getting_started/installation/) and [testrpc](https://github.com/ethereumjs/testrpc):

```sh
$ npm install -g truffle
```
```sh
$ npm install -g ethereumjs-testrpc
```

Then to test out the VOTE token with `testrpc`:

* You will need Metamask installed
* Install Zeppelin dependencies:
```sh
$ npm install zeppelin-solidity
```
* Spin up `testrpc`
* Do a `truffle compile` and `truffle migrate`. Look for 'VoteToken: 0x...' and copy down the address, you will need it later.
* Run `npm run dev`. This will open a basic app that displays the token balance and allows you to transfer. You will most likely need to navigate to localhost:3000 _in incognito_ mode ([see issue](https://github.com/trufflesuite/trufflesuite.github.io/issues/190)).
* Add the token to Metamask [following these instructions](https://support.metamask.io/kb/article/4-managing-tokens) and using the VoteToken address you copied earlier.
* Create a new account in Metamask by cliking the left option in the upper right corner. You should see two accounts now, and now we can transfer token between them.
* Copy the address of the second account, direct yourself to the app in the localhost:3000, and send an amount of tokens to the address of the second account. This is the basic test we are doing: you should see from Metamask that the token value for each account changes after each transfer.


