---
title: Two random choices
---
The algorithm is simple. Assume you have a lot of things
to choose from, and it's expensive to test a choice
to see how good it is. To improve overall performance,
pick two elements at random, and then compare the two
to make a decision.

This yields results much better than a purely random choice,
and it minimizes the amount of expensive decision making
necessary to get that improved result.

> The important implication of this result is that even a small
amount of choice can lead to drastically different results in load
balancing.

* http://www.eecs.harvard.edu/~michaelm/postscripts/handbook2001.pdf
