---
title: Minio on Go speedups from FOSDEM
---

[Minio] is a distributed storage system that provides a familiar
Amazon S3 based programming interface but that runs on your
own systems. The folks at Minio have spent considerable
effort working on performance by embedding Intel and ARM
assembly language routines to take advantage of vector and
matrix operations on both platforms.

[Minio]:https://minio.io

Frank Wessels from Minio presented a talk on
[High performance scaling techniques in Golang using Go Assembly], at the
[FOSDEM 17 conference] in Brussels in February 2017. From the talk
preview:

[High performance scaling techniques in Golang using Go Assembly]:https://www.youtube.com/watch?v=AOpprhr6C9I
[FOSDEM 17 conference]:https://fosdem.org/2017/schedule/event/go_scaling/

> Regarding hashing we have developed Go packages for two hashing
algorithms (BLAKE2 and SHA256) that take advantage of the Golang
(or Plan9) assembly capabilities. These packages exploit SIMD
instructions of Intel and the Cryptography Extensions for the ARM
platform. The speed up range from 3 to 4 times (Intel) to 100X (on
ARM). Due to the use of Golang assembly there is no need for a
C-compiler in order to use these packages (when compiling from
scratch). 

[![Frank Wessels at FOSDEM](https://img.youtube.com/vi/AOpprhr6C9I/0.jpg)](https://www.youtube.com/watch?v=AOpprhr6C9I)

