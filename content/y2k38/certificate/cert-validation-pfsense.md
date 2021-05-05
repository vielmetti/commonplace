---
title: cert validation failure in pfsense
date: 2021-02-22
---
see <https://redmine.pfsense.org/issues/11504>

Looks like this is from the validTo date in the parsed details using
a four digit date and the code assumed a two digit date. Looks like it
can be either one in certs so I added a check to fall back to the other
method. Fix coming shortly.
