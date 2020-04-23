---
title: Github
---
[Github] is a source code repository, issue tracker,
and event manager that can be used to trigger
CI systems. The [vielmetti/commonplace] book is run on a Github
project.

One of the key aspects of Github is its ability to track
changes through `git`. I'm endeavoring for a setup where
all changes get properly proposed in issues, and then
there's a pull request to resolve the issue. Branches
will be named after the issue number, and in an ideal
world every change maps back to a requirements document
of some kind.

Github has tools and tooling for automation of various
things, through `probot`. One bot I have running is the
`stale` bot which notices when issues are very old and
closes them out as `wontfix` if you don't touch them for
a long time. This is one way of keeping your efforts
honest and your workspace tidy.

[vielmetti/commonplace]:https://github.com/vielmetti/commonplace
[Github]:https://github.com
