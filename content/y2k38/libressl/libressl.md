---
title: LibreSSL
---
LibreSSL checks the size of time_t while building (configure or cmake)
for year 2038 issue, and shows warning if the size of time_t is 4.

> ** Warning, this system is unable to represent times past 2038
> ** It will behave incorrectly when handling valid RFC5280 dates

* https://github.com/libressl-portable/portable/issues/153
* https://github.com/libressl-portable/portable/issues/251

The check is at [c8918d].

> # Check if time_t is sized correctly
> AC_CHECK_SIZEOF([time_t], [time.h])

[c8918d]:https://github.com/libressl-portable/portable/commit/c8918dd0be1bbadfcebfc6631bd63f3b3e83befd
