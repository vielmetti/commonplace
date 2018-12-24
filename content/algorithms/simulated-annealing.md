---
title: Simulated annealing
---
Simulated annealing is a method for exploring
a problem space. The heuristic is that at the
beginning of the exploration you start with a
random solution i and a temperature T. At each
step along the way you try to find a better
value for F(i) by picking a neighbor j and 
evaluating F(j).

The twist in the algorithm is that depending on
the temperature T, you might decide to move
from i to j even if F(j) < F(i). The goal is to
find a global maximum, not just a local maximum,
so you're willing to "explore" a less desirable
result - initially with a high probability, but
as the temperature decreases, then less and less
until the system is cooled.

* https://pdfs.semanticscholar.org/beb2/1ee4a3721484b5d2c7ad04e6babd8d67af1d.pdf

@ARTICLE{Kirkpatrick83optimizationby,
    author = {S. Kirkpatrick and C. D. Gelatt and M. P. Vecchi},
    title = {Optimization by simulated annealing},
    journal = {SCIENCE},
    year = {1983},
    volume = {220},
    number = {4598},
    pages = {671--680}
}
