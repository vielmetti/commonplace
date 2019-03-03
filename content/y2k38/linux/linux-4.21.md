---
title: Linux 4.21 kernel
---
From Arnd Bergmann, [kernel changes] ("system call rework for 64-bit
time_t") for the Linux 4.21 kernel from December 2018.

> As before, nothing changes for 64-bit architectures, while 32-bit
architectures gain another entry point that differs only in the
layout of the timespec structure. Hopefully in the next release we
can wire up all 22 of those system calls on all 32-bit architectures,
which gives us a baseline version for glibc to start using them.

[kernel changes]:https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b12a9124eeb71d766a3e3eb594ebbb3fefc66902
