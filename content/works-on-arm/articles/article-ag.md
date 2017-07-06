---
title: Ard Biesheuvel's "Works of ARD" weblog and "Project dogfood".
---

[Ard Biesheuvel] is a developer for Linaro, working on the ARM
open source ecosystem. He writes in March 2017 about
[Project dogfood: my arm64 desktop], an effort to bring a full
64-bit ARM environment to the desktop using an 
AMD Overdrive B1 development board in an ATX form factor.

[Ard Biesheuvel]:https://www.linkedin.com/in/ard-biesheuvel-634240/
[Project dogfood: my arm64 desktop]:http://www.workofard.com/2017/03/project-dogfood-my-arm64-desktop/

Ard writes:

> So what would I need to turn this into a desktop system that is good enough for my day to day work?

Among the things he had to sort out to make this possible included
getting a quieter fan, identifying a good case and power supply,
USB and graphics support, and a number of kernel and firmware issues.

The most challenging issue identified, and the one with the most
creative solution, involved finding firmware support for boards
whose drivers are written only in x86 code. The workaround
reads as follows:

> So when Alexander Graf (of Suse) approached me at Linaro Connect
two weeks ago, to discuss the possibilities of running x86 option
ROMs on an emulator inside UEFI, I was skeptical at first, but after
some more thought and discussion, I decided it was worth a try.
Over the past ten days, we have collaborated online, and managed
to implement an X86 emulator inside UEFI, based on an old version
of QEMU (which is still LGPL licensed) combined with the more recent
AArch64 support (whose copyright is owned by HiSilicon)

The successful result is documented in a video, [gui boot on overdrive b1].

[gui boot on overdrive b1]:https://www.youtube.com/watch?v=6fs3yg_MF-k

