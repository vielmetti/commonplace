---
title: Wireguard VPN with ARM speedups
---

[Wireguard] is virtual private network software with a novel
design that puts most of the work into the Linux kernel.
It makes use of familiar Unix networking primitives to
control routing and filtering of packets, allowing the
system manager to compose a VPN out of components that can
each independently be audited for correctness.

[Wireguard]:https://www.wireguard.io

The most recent development snapshot of Wireguard, 0.0.20170531,
includes a set of ARM assembly instructions that speed up
cryptographic operations on ARM NEON capable processors.

Wireguard is in an early pre-production state. It is the
target of the annual Google Summer of Code for 2017, which
should bring about continued development. 
The source is available at https://git.zx2c4.com/WireGuard/ and
information about the project is available at https://www.wireguard.io/ .

