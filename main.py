from Crypto.PublicKey import RSA
from Crypto import Random
from Crypto.Util.number import inverse, long_to_bytes
import Crypto.PublicKey.RSA as RSA

# CTF for Beginners 2018 過去問

# 公開鍵(NとC)
N = 97139961312384239075080721131188244842051515305572003521287545456189235939577
E = 65537
# 暗号文
C = 77361455127455996572404451221401510145575776233122006907198858022042920987316

# msieveコマンドでNを因数分化しておく
p = 324144336644773773047359441106332937713
q = 299681192390656691733849646142066664329


def main():
    # 秘密鍵を求める
    d = inverse(E, (p-1)*(q-1))
    print("秘密鍵: {}".format(d))
    # 復号の準備
    rsa_key = RSA.construct((p*q, E, d))
    print("rsa_key: {}".format(rsa_key))
    # 復号
    m = rsa_key.decrypt(C)
    print("復号: {}".format(m))
    print("long_to_bytes: {}".format(long_to_bytes(m)))


if __name__ == "__main__":
    main()
