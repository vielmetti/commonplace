---
title: pigz, a fast parallel version of gzip 
---

[pigz] is a "parallel implementation of gzip for modern
multi-processor, multi-core machines". By breaking your
compression problem into pieces and then doing each piece
individually, pigz effectively uses as much of your machine
as you will let it to compress data quickly.

[pigz]:http://www.zlib.net/pigz/

A sample will illustrate. On a 123 megabyte file (the source code
for PostgreSQL), standard gzip took 18.4 seconds to compress
a tar file on the 96-core Type 2A ARMv8 machine at Packet. With
pigz, the same operation took 0.4 seconds, a 45x speedup on a 96-core
machine.

pigz - pronounced "pig-zee" - is credited to Mark Adler, and is 
is available as a part of the Ubuntu and CentOS distributions.
You can also compile it from its provided source code.

