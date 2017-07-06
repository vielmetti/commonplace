---
title: New Docker container directory for "arm64v8"
---

Alpine is a frequent choice for Docker projects because of its
compact packaging which results in remarkably small Docker
images. 
As of this writing, the new Alpine release has not yet been
picked up by Docker for their popular [aarch64/alpine container].
This is because Docker reorganized their container support on 
DockerHub to use new names, making the it now [arm64v8/alpine].

[aarch64/alpine container]:https://hub.docker.com/r/aarch64/alpine/
[arm64v8/alpine]:https://hub.docker.com/r/arm64v8/alpine/

The new naming scheme is unique to Docker, and allows them
to distinguish between the various 32-bit ARM variants that
have distinctly different container support, e.g.
'arm32v6' for the original Raspberry Pi and the Pi Zero.

