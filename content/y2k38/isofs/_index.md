---
title: isofs y2k27 problem
---
isofs uses a char variable to load number of years since 1900, and
it fails in 2027.

Patches;

* Arnd Bergmann: https://patchwork.kernel.org/patch/10016297/
