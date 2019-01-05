---
title: MCTS (Monte Carlo Tree Search)
---

Monte Carlo Tree Search (MCTS) is a method for making optimal decisions in
artificial intelligence (AI) problems, typically move planning in combinatorial 
games. It combines the generality of random simulation with the precision of tree search.

One tremendous advantage of MCTS is that it lends itself to intelligent
brute force decision making, and that the same engine can be applied
to multiple games. There is no need for any heuristic to evaluate
positions or to get the temperature of the current system; you simply
play through until the end and then backpropogate your results, over
and over and over again.

MCTS was introduced in 2006 as an algorithm for playing the game of Go,
which had been resistant to attack by other methods.

* http://mcts.ai/
* [Guillaume Chaslot, "Monte Carlo Tree Search", Ph.D. thesis](https://project.dke.maastrichtuniversity.nl/games/files/phd/Chaslot_thesis.pdf)
* [Crazy Stone](https://www.remi-coulom.fr/CrazyStone/) Go playing system, Rémi Coulom.
