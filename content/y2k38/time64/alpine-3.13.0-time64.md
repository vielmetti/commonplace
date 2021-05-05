---
title: time64 requirements for Alpine Linux 3.13.0
date: 2021-05-04
---
In using new time64 system calls in musl, Alpine Linux
encountered issues in runc and in libseccomp. Those issues
were fixed in Docker 19.03.9 and greater, and libseccomp
2.4.2 and later. This applies to all 32-bit operating
systems currently supported (x86, armv7, and armhf) including
32-bit containers running in 64-bit operating systems.

A full writeup is at [time64 requirements] in the Alpine
release notes.

[time64 requirements]:https://wiki.alpinelinux.org/wiki/Release_Notes_for_Alpine_3.13.0#time64_requirements
