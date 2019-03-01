---
title: Bloom filters
---
Bloom filters test for membership in a set.

Compute several hashes across each of the members
of the set. Store those hashes in a bit vector.
You don't need a cryptographically strong hash, but
you do want it to be fast.

To test for set membership, compute a hash of
the candidate item. Look up that hash in the bit
vector. If the bits are not set, you know that
the candidate is not in the set.

There is a chance of false positives if you have
a hash collision, which you can reduce by making
the bit vector longer.

* https://llimllib.github.io/bloomfilter-tutorial/
* https://en.wikipedia.org/wiki/Bloom_filter
