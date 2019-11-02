---
title: Multi-level feedback queue
---
A multi-level feedback queue mechanism was described by Corbato et al in 1962
as part of MIT's CTSS system.

This scheduling algorithm attempts to balance throughput and fairness by moving
processes between queues, depending on their behavior. A job that uses all of the
CPU in its time slice is bumped down in priority. This allows i/o bound and interactive
jobs a higher priority.

Some writeups can be found in [OSTEP, Chapter 8](http://pages.cs.wisc.edu/~remzi/OSTEP/cpu-sched-mlfq.pdf)
and [Zhang, CSC 369](http://www.cs.toronto.edu/~ylzhang/csc369f15/files/lec05-MLFQ-VM.pdf).
