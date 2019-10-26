---
title: Cuckoo hash
---
A fast, O(1) hashing algorithm from Pagh and Rodler (2001).

A set of hash tables is constructed with multiple independent
hashing algorithms. An entry is stored in a table based on its
hash; if there is a collision, a second hash is computed, and the
entry is stored in the other table. Multiple collisions are 
resolved by evicting entries into their alternate locations.
If loops are found in the eviction process, the tables will need
to be expanded or the hash algorithms changed.

Paper is [Pagh01].

A tutorial from [Adriann].

A visualization from [LKozma].

A [Stanford CS 166] lecture.

[Pagh01]:http://www.cs.tau.ac.il/~shanir/advanced-seminar-data-structures-2007/bib/pagh01cuckoo.pdf
[Adriann]:https://adriann.github.io/cuckoo.html
[LKozma]:http://www.lkozma.net/cuckoo_hashing_visualization/
[Stanford CS 166]:https://web.stanford.edu/class/archive/cs/cs166/cs166.1146/lectures/13/Small13.pdf
