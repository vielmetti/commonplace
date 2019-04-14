---
title: mosh
---

[Mosh] is the "mobile shell". It uses the authentication provided by
ssh, and then provides a remote terminal interface to a distant machine.
Unlike ssh the session is maintained over UDP, not TCP, and the connection
is such that it persists even when your mobile endpoint moves to another IP
address.

One nice thing about mosh is that is provides local echo, so if you have
a particularly horrible Internet connection you can still get snappy
interactiver performance.

Mosh is free software, available for GNU/Linux, BSD, macOS, Solaris, Android, Chrome, and iOS.
Alas, there is no Windows version that I am aware of.

[Mosh]:https://mosh.org/