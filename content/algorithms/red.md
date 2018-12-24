---
title: Random Early Drop
---

This paper presents Random Early Detection (RED) gateways for congestion avoidance in packet-switched networks. The gateway detects incipient congestion by computing the average queue size. The gateway could notify
connections of congestion either by dropping packets arriving at the gateway or by setting a bit in packet headers.
When the average queue size exceeds a preset threshold,
the gateway drops or marks each arriving packet with a
certain probability, where the exact probability is a function of the average queue size.

Sally Floyd and Van Jacobsen, 1993

https://www.icir.org/floyd/papers/early.twocolumn.pdf
