---
title: Go 1.9 Beta 1 with ARM64 binaries
---

![Go Gopher](https://blog.golang.org/gopher/gopher.png)

[Go 1.9 Beta 1] is the latest test release of the
Go systems programming language. It's an early
unstable release for Go 1.9, which is scheduled to emerge
from beta at the end of July 2017. Consider this release
if you are doing software development and want to 
test compatibility and performance of Go 1.9
on code that you currently have working on an earlier release.

[Go 1.9 Beta 1]:https://golang.org/dl/#unstable

This release is the first from Go to have an ARM64
binary distribution. Go maintainer [Brad Fitzpatrick writes]:
"If we don't hear happy reports, we won't ship it for the final release."

[Brad Fitzpatrick writes]:https://github.com/golang/go/issues/19082#issuecomment-308849384

A final list of new features for Go 1.9 has not emerged yet,
pending resolution of [153 open issues on the project milestone].
If previous beta releases are any guide, you'll want to get your
comments in on this beta over the course of the next week or two
before the next beta comes out.

[153 open issues on the project milestone]:https://github.com/golang/go/milestone/49

Go is an important language because of its extensive use at
Google and in cloud-native applications. Docker, Kubernetes,
Minio, CockroachDB, and Prometheus are only a few of the 
packages that depend on Go. It is to be hoped that with Go 1.9
support for ARM64 that each of these systems gets that much
easier in turn to build and maintain on ARM.

Alex Ellis has a short [tutorial on running Go 1.9 beta binaries] on 
a variety of hardware and on hosting providers including 
Packet and Scaleway.

[tutorial on running Go 1.9 beta binaries]:http://blog.alexellis.io/go-comes-to-64bit-arm/

