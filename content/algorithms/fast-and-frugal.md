---
title: Fast and Frugal
---

Fast and Frugal decision trees have the characteristic
that at every stage of the decision tree, a choice is
made. This "heuristic" approach allows for very compact,
easy to understand decision making processes within
the grasp of unaided humans to execute, and with results
that are surprisingly powerful especially in the presence
of bounds on search time and costs of decision making.

Some code in R computes trees based on training data
and presents measures of quality, including [FFTrees].
A [paper on FFTrees] gives background.

[FFTrees]:https://ndphillips.github.io/FFTrees.html
[paper on FFTrees]:http://journal.sjdm.org/17/17217/jdm17217.pdf

> Fast-and-frugal trees were defined by Martignon and colleagues as
decision trees with exactly two branches extending from each node,
where either one or both branches is an exit branch leading to a
leaf (Martignon et al., 2008, 2003). In other words, in an FFT one
answer (or in the case of the final node, both answers) to every
question posed by a node will trigger an immediate decision. Because
FFTs have an exit branch on every node, they typically make decisions
faster than standard decision trees (to avoid confusion, we refer
to decision trees that are not fast-and-frugal as standard) while
simultaneously being easier to understand and use.

The paper on Categorization with limited resources: A family of simple
heuristics (Martignon, 2008) is at
[Citeseer](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.412.3089&rep=rep1&type=pdf).
