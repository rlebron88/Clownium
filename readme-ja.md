# 👏👏100万ブロックおめおめ👏👏
## このトークンの特徴は？買えば億れる？

ネコニウムのメインチェーンが100万ブロック達成したのでその記念トークンです

あと**なれません**

## いらんけど無料ならほしい

コントラクトの`claim()`ファンクションを呼ぶことで誰でも100トークンもらえます！ただし、1アドレス一回のみ。

**#1100000以前のブロックまででしかもらえません**

[Nekonium Wallet](https://github.com/nekonium/mist/releases)を使います。準備してください

受取にはNUKOを持っている必要があります。ウォレットにNUKOが入っていないなら、[水飲み場](https://faucet.nekonium.net/)で少しだけですがもらえます。その他にもファーセットがありますので[ここのリストを見てください](https://nekonium.github.io/)。

1. `コントラクト`を押してください
2. `コントラクトを見る`を押します
3. ポップアップがでます。名前はなんでもいいですが、コントラクトアドレスは以下を入力してください
   ```
   0xE9aF34290EaF69dF76bbb967E8709C6B13CecDA1
   ```
   同様にJSONインターフェイスは以下のように入力してください
   ```
    [{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"_totalSupply","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"__symbol","type":"bytes32"}],"payable":false,"stateMutability":"pure","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"__name","type":"string"}],"payable":false,"stateMutability":"pure","type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"balance","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"__decimals","type":"uint8"}],"payable":false,"stateMutability":"pure","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"claimer","type":"address"}],"name":"Claim","type":"event"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":true,"name":"_value","type":"uint256"},{"indexed":false,"name":"_data","type":"bytes"}],"name":"Transfer","type":"event"},{"payable":true,"stateMutability":"payable","type":"fallback"},{"constant":false,"inputs":[],"name":"claim","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"},{"name":"_data","type":"bytes"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"epicDestruction","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"}]
    ```
4. OKを押してください。入力した内容がリストに追加されるはずです。
5. 追加されたコントラクトのボタンをクリックしてください。下右側に`Select function`というプルダウンがありますのでその中から`Claim`を選択してください
6. `Execute from`がちゃんと受け取りたいアカウントになっているか確認してください
7. `Execute`を押します。トランザクションが発行され、ネットワークにどんぶらこと流れます。トランザクションが採掘されると**100 1MOmeOmeTokenをもらえます**
   
   これ以降同じアドレスでは`claim()`を呼べなくなります
   
   \#1100000以前ではもらったトークンは他アドレスに動かせません
   
8. `コントラクト`ビューのカスタムトークンで`トークンを追加`すると残高が見れるようになります

## ぎじゅちゅてきなはなち

ERC223トークンです

## Special thanks to...
イーサリアムチームとネコニウムチームとぬこ好きのみなさん

together we meow😻