import os
import binascii
import ed25519

priv = os.urandom(32)
pub = ed25519.derive_pubkey_from_priv(priv)
pub = bytearray([ord(x) for x in pub])
hpriv = binascii.hexlify(priv)
hpub = binascii.hexlify(pub)

print("Private key: {}".format(str(hpriv, "utf-8")))
print("Public key : {}".format(str(hpub, "utf-8")))