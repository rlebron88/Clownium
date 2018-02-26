# 👏👏1M Blocks!! Congratulations!👏👏
## What is this token? Can I make moneeeeuy out of this?

It is token made for merely celebrating reaching of 1M blocks on Nekonium main-chain

It has ABSOLUTELY NO VALUE so **NO** you can not make money out of this token

## How to get some?

You can "claim" 100 of this token by calling `claim()` function, but you can do it only once per an address.

**This is time-limited distributed token, you have to call `claim()` equal or before block #1100000**

You can do it by [Nekonium Wallet](https://github.com/nekonium/mist)

Thing you need: NUKO! If you don't have, you can get a little at [my faucet](https://faucet.nekonium.net/)
or you can use various faucets on the web which you can find the list on [here](https://nekonium.github.io/)

1. Open `Contracts`
2. Click `View contracts`
3. You can set name whatever you want, but you have to set contract address
   ```
   0xE9aF34290EaF69dF76bbb967E8709C6B13CecDA1
   ```
   and JSON interface (ABI) is
   ```
    [{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"_totalSupply","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"__symbol","type":"bytes32"}],"payable":false,"stateMutability":"pure","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"__name","type":"string"}],"payable":false,"stateMutability":"pure","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"__decimals","type":"uint8"}],"payable":false,"stateMutability":"pure","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"claimer","type":"address"}],"name":"Claim","type":"event"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":true,"name":"_value","type":"uint256"},{"indexed":false,"name":"_data","type":"bytes"}],"name":"Transfer","type":"event"},{"payable":true,"stateMutability":"payable","type":"fallback"},{"constant":false,"inputs":[],"name":"claim","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"},{"name":"_data","type":"bytes"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"epicDestruction","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"}]
    ```
4. Hit ok, the token contract will be added to your contracts list
5. Click added contract, select function `claim()` at dropdown in right pane (not the furthest right menu with icons)
6. Please examine that you are selecting the right account you want to get tokens at `Execute from` dropdown
7. Press `Execute`! After your transaction is mined, **you would get 100 1MOmeOmeTokens!**
   
   Please note that you can not call `claim()` multiple times, only once per an address.
   
   AAAAND you cannot transfer tokens before block #1100000, but after that, you can transfer your tokens whenever you want!
   
   Enjoy and thanks for your amazing help to grow Nekonium!

8. *(Optional Step)*

   Add custom tokens on `Contracts` view enables you to see balance of tokens you have, if you want to keep track of it.

## Some technical tips

This is ERC223 token so it won't be lost if you accidentally send tokens to non-compatible contract. WOW (still in draft tho)

## Special thanks to...
Team of Ethereum, team of Nekonium

and all of the nuko lovers out there

together we meow😻