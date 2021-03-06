---
title: isofs y2k27 problem
---
isofs uses a char variable to load number of years since 1900, and
it fails in 2027.

A [patch] from Arnd Bergmann was posted to the "linux-fsdevel" list
in 2017. The fix changes a char to a u8 array, and increases the
effective life of isofs to 2155. Look in isofs.h.

[patch]:https://patchwork.kernel.org/project/linux-fsdevel/patch/20171019144811.2144678-1-arnd@arndb.de/
