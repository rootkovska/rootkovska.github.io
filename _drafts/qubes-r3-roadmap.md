---
layout: post
title: Qubes 3.0 ISO (rc1) and roadmap for 2015
author: Joanna Rutkowska
---

A lot of important news today.

Finally, we're releasing the first installable ISO for Qubes 3.0, i.e. the
Release Candidate 1 (3.0-rc1)!

Compared to Qubes R2, which we
[released](http://blog.invisiblethings.org/2014/09/26/announcing-qubes-os-release-2.html)
in fall last year, this new release brings major improvements in two distinct
areas:

* It implements the new hypervisor-abstracted architecture
  ([HAL](http://blog.invisiblethings.org/2013/03/21/introducing-qubes-odyssey-framework.html)),
  and introduces a load of [new features](http://TODO): Xen 4.4, [new qrexec](),
  and brings lots of new VM templates with full Qubes integration: Debian 7 and 8,
  Whonix 9, and [many more](http://TODO).

* It provides important modifications and improvements to our build system.

Let me spend a while discussing these build system improvements now, as these
are quite important for the future of the project:

As Qubes is becoming more popular, and we get more contributions from the
community, the obvious problem we're starting to face is how to verify all the
contributions in terms of them being both or proper quality (i.e. not
introducing bugs to the system), as well as being non-malicious (i.e. not
introducing backdoors, nor compromising developer's machine).

Another problem we're facing is how to avoid potential targeted attacks on us,
i.e. those who build and distribute Qubes binaries. E.g. we trust Fedora and
Debian Projects to produce un-backdoored (but not necessarily flawless!) RPM and
DPKG binary packages, which we subsequently use to build Qubes templates and
Dom0/installation images. I believe it is reasonable for us to make such a
trust decision, because these projects are widespread and if they decided to
publish (and sign) backdoored binaries (i.e. images not strictly corresponding
to the specific source code they publish), they would be risking a lot of being
caught red-handed.

However, given Qubes extreme focus on security and its attractiveness for
various "interesting targets", it's absolutely thinkable that an adversary, who
got access to Fedora or Debian projects binary singing keys, might be able to
target the Qubes developers who are responsible for building the ISOs and/or the
updates, and provide them with backdoored packages, still correctly signed by a
correct distro key.

Finally, there is a problem of trusting us, the Qubes developers, that we really
are not malicious and produce and distribute un-backdoored binaries and ISOs,
matching indeed the source code we publish. Or... that our build systems/VMs
are not compromised. Or that our singing keys are not stolen. 

We believe we can solve most of these concerns with the following mechanisms:

1. We want to make Qubes building process more defensive, i.e. safe for the
   builder (prevent the building system's compromises). This especially applies
   to building Qubes templates. 

2. We want to make the build process difficult to target (e.g. to be fed with
   backdoored Fedora or Debian packages, even if they were correctly signed with
   the distro signing key)

3. We want to make template distribution/installation mechanisms more defensive.
   So that even if the user decided to install a 3rd-party-provided template,
   that turned out to be malicious, still this should not affect other parts of
   the Qubes system, i.e. Dom0, and all other templates and corresponding VMs.

4. We want to distribute the trust in Qubes binary packages and ISOs by
   introducing multi-signature signing scheme, in which e.g. the Qubes Updater
   would be checking whether each package has at least M signatures made by one
   of the N trusted, pre-selected parties. This, of course, requires
   deterministic builds.

We have already implemented #1 by introducing support in the Qubes Builder to
build templates in disposable VMs (see [here](http://TODO) for details). This
will now allow to maintain separate repos for different templates (Fedora,
Debian, Whonix, etc.) with different people responsible for each.

We have also implemented #2 by using Whonix Tor Gateway as a default netvm for
all the VMs uses for the 3.0 rc1 ISO build (as per #1 there are now more than
one involved). As an alternative/additional way to prevent developer targeted
attacks, we have considered to implement [publishing hashes of downloaded
components] TODO?

Finally, we have also made quite some progress in implementing #3. This was done
by simplifying the template packaging, making it much easier for the user, who
is about to install the (potentially untrusted, community-contributed) template
package in Dom0 to verify it won't compromise the system. In the near future we
plan on moving to a better packaging for the templates and to automate this
process even more (i.e. all template packages, even those coming from us) would
be considered untrusted by the installer. More into about template packaging can
be found [here](http://here).

The #4 would be most challenging to get, as currently most projects, including
all Linux distributions, do not build deterministically (i.e. various people
building from the same source code are getting different binaries).
Deterministic builds are, of course, a pre-requisite for this. However, all the
work we have made to sandbox the build process for (untrusted) components, such
as the templates, is also crucial here, as we want to make it safe for many
parties to be able to build Qubes and provide hashes for the binaries
independently.

Speaking of our plans, the diagram below shows the roadmap for the rest of the
year for Qubes 3.x and further:

<img src="/resources/roadmap-2015-apr.jpg" style="width:150px">

The major new feature coming in the next release (Qubes 3.1) is the management
and pre-configuration infrastructure. This is gonna be a basis for both remote
management (e.g. for corporate Qubes editions) as well, and more importantly
presently, for preparing customized Qubes editions/configurations for specific
users/use cases, etc. More on this important topic in an upcoming article.

We have also invested a lot of work into what we call "core3", our next
generation Qubes management stack, mostly rewritten from scratch by Wojtek
Porczyk and Marek Marczykowski-Górecki. We have originally planned to base Qubes
3.0 on this new core3 stack, but the changes turned out to be too intrusive and
so we would not be able to get it released anytime soon then. So, we decided to
release Qubes 3.0 on the previous core2 (which is essentially a Marek's rewrite
of the original core I did for Qubes R1, and which we used in Qubes R2), and
delay the introduction of core3 until... Qubes 4.0, planned sometime at the end
of the year). In the meantime 3.1, and 3.2 releases will bring additional
features on top of the 3.0 we're releasing today, such as the management and
preconfiguration support mentioned above.

We now have a [qubes-roadmap](https://github.com/rootkovska/qubes-roadmap) repo
which tracks the high-level release roadmap for 3.x and 4.x, and the diagram
above was generated out of this repo.

Speaking of releases and roadmap, it's worth mentioning we have decided to
slightly change the release cycle for Qubes, starting with 3.0. The new scheme
is modeled after the Linux Kernel release cycle. More on this can be read
[here](http://TODO).

One important improvement that hasn't been illustrated in the roadmap diagram is
the introduction of many automatic tests into our build system. More on this
[here](http://TODO).

Finally, as many of you has undoubtedly seen, over the last weeks we have
decided to migrate our servers infrastructure out of our private servers (hosted
at AWS) to public services: GitHub.com and SF.net. This is part of a larger plan
to decentralize our project (see above), as well as provide better integrity
protection for some additional resources, such as the Wiki documentation. This
is for similar reasons I decided to move my blog to git/GitHub.com (See my
[previous
post](http://blog.invisiblethings.org/2015/02/09/my-new-git-based-blog.html) for
more explanations).

The new Qubes 3.0 ISO can be downloaded from [here](http://TODO). This is, BTW,
the first Qubes ISO built by Marek Marczykowski-Górecki, instead of by myself.
As I have recently been involved in a New Project (to be announced sometime
later, it's Qubes-related, of course), I decided to hand off the signing keys
for Qubes Release 2 and 3 to Marek. This means he will be building and uploading
also the updates for Qubes R2. I'm still keeping the Qubes Master Key though in
one of my (offline) VMs, though ;)
