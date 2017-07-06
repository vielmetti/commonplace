---
title: Works on ARM news, Issue 1, April 28, 2017
date: 2017-04-28T12:00:00-04:00
author: Edward Vielmetti
---

# Works on ARM news, Issue 1, April 28, 2017

This is the first edition of Works on ARM news, a newsletter
from [Ed Vielmetti], Special Projects Director at Packet that covers development of
software for ARMv8 in open source and the enterprise.

[Ed Vielmetti]:https://www.packet.net/about/ed-vielmetti/

If you have any questions, comments, or suggestions for Issue 2, please 
send them to ed@packet.net or contact me on the [Packet community Slack]
channel as "ed.packet".

[Packet community Slack]:https://slack.packet.net/

## Conference reports

DevOps Gathering 2017 featured "Intel and ARM, let Kubernetes rule them
all!" by [Lucas Käldström], March 23 - 25, 2017 in Bochum, Germany
See the [Youtube video of Lucas's talk], via [Kube Weekly #80].

[Youtube video of Lucas's talk]:https://www.youtube.com/watch?v=MxeVwAbRbDM
[Lucas Käldström]:https://twitter.com/kubernetesonarm
[Kube Weekly #80]:https://kubeweekly.com/kubeweekly-80/

Dieter Reuter and Peter Rossbach's workshop on 
[Learning Docker on a Raspberry Pi ARM-Cluster]
at DevOps Gathering in March 2017. Source code from
the workshop is at [workshop-raspberrypi-64bit-os] on Github.

[Learning Docker on a Raspberry Pi ARM-Cluster]:https://devops-gathering.io/workshops/Learning-Docker-on-a-Raspberry-Pi-ARM-Cluster/
[workshop-raspberrypi-64bit-os]:https://github.com/DieterReuter/workshop-raspberrypi-64bit-os

## Upcoming events

Packet will be at Red Hat Summit in the 
[ARM Ecosystem Showcase] on May 2-4 in Boston, MA. 

[ARM Ecosystem Showcase]:https://www.arm.com/about/events/red-hat-summit-2017.php

MityLytics will be at Apache Big Data 2017, May 16-18 in Miami, 
with Manish Singh presenting on 
[Cassandra on ARMv8 - A Comparison with x86 and Other Processor Platforms].

[Cassandra on ARMv8 - A Comparison with x86 and Other Processor Platforms]:https://apachebigdata2017.sched.com/event/9zsr/cassandra-on-armv8-a-comparison-with-x86-and-other-processor-platforms-manish-singh-mitylytics

The [call for proposals deadline for ARM TechCon] is May 19,
for an event to be held October 24-26 in Santa Clara, CA.

[call for proposals deadline for ARM TechCon]:http://www.armtechcon.com/arm-techcon-2017-call-for-proposals-now-open/

## Infrastructure automation

Docker's "moby" project has support for booting LinuxKit kernels
on Packet's Intel and ARM based infrastructure.

[Ansible] has released documentation for its [support of Packet].
This code was written by [Tomáš Karásek].

[Ansible]:http://www.ansible.com
[support of Packet]:http://docs.ansible.com/ansible/guide_packet.html
[Tomáš Karásek]:https://github.com/t0mk

## Work in progress

Highlighting work in progress where a modest amount of 
incremental effort is likely to result in software that 
works on ARM. Each of these projects is available for
you to contribute to.

Alex Ellis presented FAAS, 
[Functions as a service],
at DockerCon in Austin on April 20, 2017.
His twelve minute demo won best of show for "cool hacks",
demonstrating scaling up "serverless" computing using Docker Swarm.
See his [repo on Github] for
code. There's a bit of work left to port to arm64, mostly having to do with
getting Docker up and running on the box in an automated way with a minimum of fuss.
Alex is interested in contributions from the community, and notes that FaaS
brings portability to serverless functions.

[Functions as a service]:http://blog.alexellis.io/dockercon-2017-captains-log/
[repo on Github]:https://github.com/alexellis/faas-dockercon

## Languages and compilers

[NodeSource] [announced ARMv8 support for Node.JS] on March 31, 2017.
The official build for node.js for linux/arm64 is done on
a Packet [Type 2A] 96-core server, and is released at the same time
as all other binaries for supported platforms. Node.JS is
a popular language for Internet development because it allows
developers access to the same Javascript language that is
in the browser to also power back end services.

[NodeSource]:https://nodesource.com/
[announced ARMv8 support for Node.JS]:https://nodesource.com/blog/announcing-arm64-support-in-our-node-js-package-repositories
[Type 2A]:https://www.packet.net/bare-metal/servers/type-2a/

[Go 1.8.1] was released on April 7, 2017. This is primarily a
bug fix release, and it addresses a number of small issues
on a variety of platforms. See the [Go release history] for details.
Go 1.8.1 is avaiable on Ubuntu through the [Go 1.X Packages PPA],
and can be built from source on Ubuntu using the system Go
which is 1.6.4 as a bootstrap. See [worksonarm.com/golang]
for a full account.

[Go 1.8.1]:https://golang.org/
[Go release history]:https://golang.org/doc/devel/release.html#go1.8.minor
[Go 1.X Packages PPA]:https://launchpad.net/~gophers/+archive/ubuntu/archive
[worksonarm.com/golang]:http://worksonarm.com/golang

The [Adopt OpenJDK project] is using infrastructure at Packet for
continuous integration in 
building this open source Java runtime. They are working on a release for arm64,
though it is not ready yet as of April 26, 2017.

[Adopt OpenJDK project]:https://adoptopenjdk.net/

## ARM Assembly speedups

[Minio] has developed [sha256-simd], a package of Go code
that's a drop-in replacement for the Go system SHA256 crypto
routines. Minio's version is accelerated with assembly language
code for ARM and Intel processors. These measured speed
improvements range from 10x to 100x depending on the situation.

[Minio]:http://minio.io
[sha256-simd]:https://github.com/minio/sha256-simd/

## Continuous integration

Several open source projects at Packet are using Jenkins
for continuous integration and remote builds. If your project
currently builds on ARM - or if you'd like it to - contact
ed@packet.net to discuss your build needs.

## Bug fix releases

[Minio], a storage system that provides an S3 compatible
interface to your data, sent out news on April 25 announcing
a bug fix release with [critical fixes] that have security implications. 

[critical fixes]:https://github.com/minio/minio/releases/tag/RELEASE.2017-04-25T01-27-49Z

## Portability notes

If you're writing code for ARMv8, you'll want to 
be aware of these issues that require special attention.

When the Go syscall interface was frozen, ARMv8 systems did
not support a dup2() system call. For portability, you'll
want to do as the CockroachDB team did and wrap those calls
with conditional compiles to pick up dup3() instead. It turns
out this is also necessary for Windows portability and log file
handling. See [PR 14441 for CockroachDB] for details on implementing
a portable "dupFD" interface.

[PR 14441 for CockroachDB]:https://github.com/cockroachdb/cockroach/pull/14441

Different ARMv8 systems implement different system page sizes.
Your code should determine the system page size at runtime, with
a goal of being portable enough so that if it's built on a system
with 4K pages that it will run on a system with 64K pages. Versions
of Go 1.7 and earlier have a [bug in fetching the system page size],
a problem that's addressed in the Go 1.8 series. This issue is
also being [addressed by the .NET Core CLR team].

[bug in fetching the system page size]:https://github.com/golang/go/issues/10180
[addressed by the .NET Core CLR team]:https://github.com/dotnet/coreclr/issues/9517

The contents of the `/proc/cpuinfo` file system differ between
ARM and Intel systems. If you are parsing that file to determine
the number of cores on the machine, you may get incorrect results
if you have not made that code more portable. In particular,
[this Juju bug], "manual: detection of cores fails on Packet Type 2A",
resulted in [Juju] (Canonical's open source application modeling tool) finding only one core
on Packet's 96-core Type 2A system. The bug was fixed by Witold Krecicki
for Juju 2.2 beta 3.

[this Juju bug]:https://bugs.launchpad.net/juju/+bug/1664434
[Juju]:https://jujucharms.com/
## Colophon

Edited with Github and vim on a MacBook Air in Ann Arbor, MI.
---
title: Works on ARM news, Issue 2, Friday May 5, 2017
---

# Works on ARM news, Issue 2, Friday May 5, 2017

This is the second edition of Works on ARM news, a newsletter
from [Ed Vielmetti], Special Projects Director at Packet that covers development of
software for ARMv8 in open source and the enterprise.

[Ed Vielmetti]:https://www.packet.net/about/ed-vielmetti/

If you have any questions, comments, or suggestions for Issue 2, please 
send them to ed@packet.net or contact me on the Packet community Slack
channel as "ed.packet". Tweets can be send to the @[worksonarm] account
or to @[vielmetti].

[worksonarm]:https://twitter.com/worksonarm
[vielmetti]:https://twitter.com/vielmetti

## Conference reports

Red Hat Summit in Boston on May 2-4, 2017 featured the ARM Pavillion.
Vendors [Cavium], [Qualcomm], [Packet], [Linaro], [Phoenics Electronics] and [Gigabyte]
were in attendance alongside ARM. I was on the show floor for three days,
talking to people from a variety of industries and from [Red Hat].

[Cavium]:http://cavium.com/
[Qualcomm]:https://www.qualcomm.com/
[Packet]:http://www.packet.net
[Linaro]:https://www.linaro.org/
[Phoenics Electronics]:https://www.phoenicselectronics.com/
[Gigabyte]:http://www.gigabyte.us/
[Red Hat]:http://redhat.com

At Kubecon, [Lucas Käldström] demonstrated a bare-metal multi-platform
kubeadm setup with persistent storage and monitoring.
See [kubeadm-workshop] for code on Github.

[Lucas Käldström]:https://twitter.com/kubernetesonarm
[kubeadm-workshop]:https://github.com/luxas/kubeadm-workshop

[Serverless] was in Austin Texas in late April 2017.
This [account from Adobe I/O] describes some highlights
from the event, including the history and evolution of
computing and a description of the "toddler years" of
serverless efforts.

[Serverless]:https://austin.serverlessconf.io
[account from Adobe I/O]:https://medium.com/adobe-io/three-things-we-learned-at-serverless-conf-austin-9692fa229d13

## Upcoming events

Mityltics will be at Apache Big Data 2017, May 16-18 in Miami, 
with Manish Singh presenting on 
[Cassandra on ARMv8 - A Comparison with x86 and Other Processor Platforms](https://apachebigdata2017.sched.com/event/9zsr/cassandra-on-armv8-a-comparison-with-x86-and-other-processor-platforms-manish-singh-mitylytics).

[Apache Big Data 2017]:https://apachebigdata2017.sched.com

The [call for proposals deadline for ARM TechCon](http://www.armtechcon.com/arm-techcon-2017-call-for-proposals-now-open/) is May 19,
for an event to be held October 24-26 in Santa Clara, CA.

## Single board computers: the Hikey 960

The Hikey 960 is designed as a single board computer for Android development.
It was developed by Huawei and can be purchased through a variety of distributors
listed at the [96boards web site]. US suggested retail price is $239.
The system has an 8-core Huawei Kirin 960 processor, featuring
4 ARM Cortex A73 and 4 Cortex A53 cores, 3GB of DRAM, and 32G of flash.

[96boards web site]:http://www.96boards.org/product/hikey960/

## 64 bit operating systems for the Raspberry Pi 3

Raspberry Pi 3 owners have several choices for booting an ARMv8-based 64-bit
operating system on that system.

[SUSE Linux] was announced for Raspberry Pi 3 systems in November
2016. The release announcement notes that it is based on the upstream
kernel used for SLES for ARM and has a common code base with all
architecture supported by SUSE Linux Enterprise. Based on this
support, StackIQ announced a version of their [Stacki] data center
provisioning software that works with the Raspberry Pi to let you
build ARM and Intel based clusters.

[SUSE Linux]:https://www.suse.com/communities/blog/suse-linux-enterprise-server-raspberry-pi/
[Stacki]:https://www.suse.com/communities/blog/provision-sles-bare-metal-including-raspberry-pi-fast/

Hypriot is a distribution based on Debian 8. Dieter Reuter
put together a workshop on building a full arm64 distribution
for the Pi 3, complete with build scripts for all aspects of
the system, in his [Building a 64bit Docker OS for RPi3].

[Building a 64bit Docker OS for RPi3]:https://blog.hypriot.com/post/building-a-64bit-docker-os-for-rpi3/

## ARMv8 servers by the hour from Scaleway and Packet

[Scaleway] announced the availability of virutalized ARMv8 systems
on April 27, 2017 out of their Paris data center, with availability
in Amsterdam scheduled soon. Systems are available with 2, 4 or 8
cores, and cost upwards from 2.99 Euros/month.

[Scaleway]:https://blog.online.net/2017/04/27/scaleway-disruptive-armv8-cloud-servers/

[Packet]'s Type 2A server, a 96-core Cavium based ARMv8 system, was featured
at the ARM Pavillion at Red Hat Summit. Priced at $0.50/hr, it provides
developers with easy access to hardware for their ARMv8 development,
as well as infrastructure for workloads. (Packet is a sponsor of this newsletter).

[Packet]:http://packet.net

## Work in progress

Highlighting work in progress where a modest amount of 
incremental effort is likely to result in software that 
works on ARM. Each of these projects is available for
you to contribute to.

[CockroachDB] is a distributed database designed as an 
open source equivalent to Google's Spanner database,
for disaster-tolerant global infrastructure.  Work is in progress to
[port this system to ARMv8].

[CockroachDB]:https://www.cockroachlabs.com/
[port this system to ARMv8]:https://github.com/cockroachdb/cockroach/issues/14405

## Web infrastructure

[Nginx] is a web server, reverse proxy server, load balancer and
HTTP cache. Since 2014 it has been commercially supported on ARMv8.

[Nginx]:http://www.nginx.com

[Hugo] is a static site generator used for weblogs and web site development,
and since v0.20.3 the official release includes ARMv8 support.

[Hugo]:http://gohugo.io

## ARM Assembly speedups

[WolfSSL] (formerly CyaSSL) has ARMv8 native instruction support
to speed up SSL termination. The software is widely used in 
embedded systems, and also includes server support for integration
with [Nginx].

[WolfSSL]:https://www.wolfssl.com/wolfSSL/Home.html

## Continuous integration

Several open source projects at Packet are using Jenkins
for continuous integration and remote builds. If your project
currently builds on ARM - or if you'd like it to - contact
ed@packet.net to discuss your build needs.

## In other newsletters

[Cloud Native Monthly], April 2017, was produced by the Cloud
Native Computing Foundation. You'll need to subscribe to get a
copy - a sample February newsletter is online.

[Cloud Native Monthly]:https://www.cncf.io/newsroom/newsletter/

Sysdig's [Containers News] No. 5 for March and April 2017 has
a good roundup of container-based computing news.

[Containers News]:https://sysdig.com/newsletters/

## Portability notes

If you're writing code for ARMv8, you'll want to 
be aware of these issues that require special attention.

CockroachDB discovered that the Go 1.8.1 runtime returns
slightly different numeric results for floating point
operations, characterized generally as different rounding
behavior for the very last decimal place.
Other anomalous results have been seen in 
PHP and in the JVM based Clojure language. Work is underway
to provide minimum test cases to ARM and to language developers
and to identify guidance for acceptance tests.

## Colophon

Produced in part on the show floor at Red Hat Summit.
Portions of this newletter were edited with Github,
vim on a MacBook Air.
---
title: Works on ARM news, Issue 3, Friday May 12, 2017 (Week 19)
---

# Works on ARM news, Issue 3, Friday May 12, 2017 (Week 19)

This is the third edition of Works on ARM news, a newsletter
from [Ed Vielmetti], Special Projects Director at Packet that covers development of
software for ARMv8 in open source and the enterprise.

[Ed Vielmetti]:https://www.packet.net/about/ed-vielmetti/

This issue has Resin's 144-node ARM-based "Beast" cluster, a
conference report from Red Hat Summit in Boston, video from
DockerCon in Austin, an OpenBSD 6.1 release, and software
from NGINX and Portainer.

If you have any questions, comments, or suggestions for Issue 4, please 
send them to ed@packet.net or contact me on the Packet community Slack
channel as "ed.packet". Tweets can be send to the @[worksonarm] account
or to @[vielmetti].

[worksonarm]:https://twitter.com/worksonarm
[vielmetti]:https://twitter.com/vielmetti

## Golang 1.9 plan for ARM64 support

The Go language team (golang) has moved [ARM64 binary support for Go] onto
their [Go 1.9 release target schedule], due out at the end of July 2017.
Up until now, to bootstrap Go from source, it had been necessary to
cross-compile the compiler or build from a previously cross-complied 
version. The release target will allow downstream projects such
as Docker and Kubernetes to build directly from a supported version of Go.

[Go 1.9 release target schedule]:https://github.com/golang/go/milestone/49
[ARM64 binary support for Go]:https://github.com/golang/go/issues/19082

## Build notes: Resin's "Beast"

The folks at [resin.io] have built several versions of a Raspberry
Pi ARM-powered cluster for demonstrating their fleet management
capabilities. This [144-node cluster] features a field of displays
which are driven directly by each Pi. The housing hides a modular
network of switches and wires used to connect the Pi network together.
Having finished Beast v2, the team is hard at work on a third
generation of the effort.

[resin.io]:http://resin.io
[144-node cluster]:https://resin.io/blog/the-evolution-of-the-beast-continues/

<img src="https://resin.io/blog/content/images/2017/01/MwI7plt.jpg"/>

