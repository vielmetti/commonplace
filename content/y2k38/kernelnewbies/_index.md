---
title: Kernel Newbies y2038 project
---
All 32-bit kernels to date use a signed 32-bit time_t type, which can only represent time until January 2038. Since embedded systems running 32-bit Linux are going to survive beyond that date, we have to change all current uses, in a backwards compatible way.

* https://kernelnewbies.org/y2038
* https://lists.linaro.org/mailman/listinfo/y2038
