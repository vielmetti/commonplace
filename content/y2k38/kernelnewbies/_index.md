---
title: Kernel Newbies y2038 project
---
Kernelnewbies is a community of aspiring Linux kernel developers
who work to improve their Kernels and more experienced developers
willing to share their knowledge.

The [Kernel Newbies 2038 project]:

All 32-bit kernels to date use a signed 32-bit time_t type, which
can only represent time until January 2038. Since embedded systems
running 32-bit Linux are going to survive beyond that date, we have
to change all current uses, in a backwards compatible way.

Discussion on the [y2038 list] hosted by Linaro.

[Kernel Newbies 2038 project]:https://kernelnewbies.org/y2038
[y2038 list]:https://lists.linaro.org/mailman/listinfo/y2038
