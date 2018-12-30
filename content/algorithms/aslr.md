---
title: ASLR (Address Space Layout Randomization)
---
Address Space Layout Randomization (ASLR) is a security technique
used in operating systems to mitigate risk against buffer overflow
attacks. It does this by randomizing the location of the code,
data, and libraries used by a process in virtual memory. An attacker
who exploits a buffer overflow will not be able to predict
where to write their exploit code, as it changes every time.

* https://pax.grsecurity.net/docs/aslr.txt
