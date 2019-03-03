---
title: time64.h
---
A 64-bit time_t implemented for 32-bit systems.

This is an implementation of POSIX time.h which solves the year 2038
bug on systems where time_t is only 32 bits.  It is implemented in
bog-standard ANSI C.  The latest version can be found at
[https://github.com/evalEmpire/y2038](https://github.com/evalEmpire/y2038).
