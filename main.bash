#!/bin/bash

echo "---*--- RSA private-key gen ---*---"
# 秘密鍵の生成(default: 2048bit)
openssl genrsa > private-key.pem
# openssl genrsa [bit] > private-key.pem
# .pem: pem形式のファイル. .keyでも可
# e is 65537: RSAで平文を暗号するときに使う数字（だいたいみんな65537を使う）
#             c = m ** e ( mod n )
#             n = p * q

echo "---*--- RSA private-key preview ---*---"
# RSA秘密鍵を人が読める形に変換
openssl rsa -text < private-key.pem # openssl [暗号方式] -text < [key file]
# modules: 2つの素数(p, q)の積:n ( p * q )
# nはばれてもよい数字（公開鍵にも記載される）
# prime1, prime2: この2つがばれてはいけない素数である n = prime1 * prime2
# 16進数を:で区切った表示になっている

echo "---*--- RSA public-key gen ---*---"
# 公開鍵の生成
openssl rsa -pubout < private-key.pem > public-key.pem
echo "---*--- RSA public-key preview ---*---"
# 公開鍵のテキスト表示
openssl rsa -text -pubin < public-key.pem

echo "---*--- encryption ---*---"
# 暗号化してみる
echo "openssl... onushi... omoroiyanke..." | openssl rsautl -encrypt -pubin -inkey public-key.pem > message
# messageはバイナリコードになるのでbase64でエンコードしてみる（不要）
echo "---*--- encrypted message ---*---"
base64 message
# base64: https://qiita.com/PlanetMeron/items/2905e2d0aa7fe46a36d4
# 復号してみる
echo "---*--- decryption ---*---"
cat message | openssl rsautl -decrypt -inkey private-key.pem
