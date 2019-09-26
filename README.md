# RSAを学びたくなって...
2019/9/27([曜日](https://lm-7.hatenadiary.org/entry/20090831/1251727185))


## キッカケ
某SummerWarsにて某健二くんが鼻血を出しながら暗算で暗号文を復号したことは有名であり  
どんな問題を解いてどれだけ難しいことなのか興味がわいて調べてみたことがきっかけ

あとはCTFで毎度見るけど毎度解けないから...

## ちょこっとツェラーの公式
J = 20, K = 19, m = 9, q = 27  
h = ( q + [ ( ( m + 1 ) * 26 ) / 10 ] + K + [ K / 4 ] + [ J / 4 ] - 2 * J ) mod 7  
&nbsp;&nbsp; = ( 27 + [ ( ( 9 + 1 ) * 26 ) / 10 ] + 19 + [ 19 / 4 ] + [ 20 / 4 ] - 2 * 20 ) mod 7  
&nbsp;&nbsp; = ( 27 + 26 + 19 + 4 + 5 - 40 ) mod 7  
&nbsp;&nbsp; = 41 mod 7  
&nbsp;&nbsp; = 6  
youbi[h] = {0: "土", 1: "日", 2: "月", 3: "火", 4: "水", 5: "木", 6: "金"}  
よって, 2019/10/27は金曜日！  

## 少しかじった感想
奥深すぎ...

RSA?  
&nbsp; → アルゴリズムはわかった  
&nbsp; → 問題解いてみよう(CTF過去問多数あり)(奥深ポイント)  
&nbsp; → 素因数分解のアルゴリズム多数あり(奥深ポイント)  
&nbsp; → CTFの問題によっては解けきれないアルゴリズムもある(奥深ポイント)  
&nbsp; → pythonでrsa実装?  
&nbsp; → opennssl?  
&nbsp; → ... orz  

とりあえず理解できそうな問題を1問だけ...  
あとopensslで遊ぶ  
[オレオレ証明書をつくる？](https://ozuma.hatenablog.jp/entry/20130511/1368284304)おもしろそう...  
[SSL証明書の発行方法・手順まとめ](https://qiita.com/cyborg__ninja/items/876c3d648a13831523e3)  
小さなことからコツコツと...  

次回はRSA自作してみたいな...  

## 内容
- main.py: ctf for beginners 2018 過去問解いてみた
- main.bash: opennsslで遊んでみた


## 参考
- ctf for beginners 2018 過去問解いてみた
  - [RSA暗号解読問題を解く(前編)[CTF for Beginners 2018]"RSA is Power"](http://k-mawa.hateblo.jp/entry/2018/06/07/192242)
  - [RSA暗号解読問題を解く(後編)[CTF for Beginners 2018]"RSA is Power"](http://k-mawa.hateblo.jp/entry/2018/06/19/141347)
- opennsslで遊んでみた
-- [opensslでRSA暗号と遊ぶ](https://ozuma.hatenablog.jp/entry/20130510/1368114329)

- [msieve install for Ubuntu(wsl)](http://inaz2.hatenablog.com/entry/2016/01/09/032521)

&copy; 2019 okomeee