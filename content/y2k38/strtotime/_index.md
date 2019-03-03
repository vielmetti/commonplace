---
title: PHP strtotime() unsafe
---
[strtotime()] is a PHP function which breaks on 32 bit
systems in y2k38. Use DateTime() instead.

[strtotime()]:http://php.net/manual/en/function.strtotime.php
