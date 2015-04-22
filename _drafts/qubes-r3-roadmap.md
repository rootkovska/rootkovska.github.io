---
layout: post
title: Qubes 3.0 ISO (rc1) and roadmap for 2015
author: Joanna Rutkowska
---

A lot of important news today.

Finally, we're releasing the first installable ISO for Qubes 3.0, the Release
Candidate 1 (3.0-rc1)!

Compared to Qubes R2, which we
[released](http://blog.invisiblethings.org/2014/09/26/announcing-qubes-os-release-2.html)
last year, Qubes OS 3.0 brings major improvements in two distinct areas:

* It implements the new hypervisor-abstracted architecture (which we call:
  [HAL](http://blog.invisiblethings.org/2013/03/21/introducing-qubes-odyssey-framework.html)),
  and introduces a load of new features: Xen 4.4, [new
  qrexec](https://www.qubes-os.org/doc/Qrexec3Implementation/), and brings lots
  of new VM templates with full Qubes integration: Debian 7 and 8, Whonix 9, and
  [many more](http://TODO).

* It also provides important modifications and improvements to our build system.

Let me spend a while discussing these build system improvements now, as these
are quite important for the future of the project, I think:

As Qubes is becoming more popular, and we get more contributions from the
community, the obvious problem we're starting to face is how to verify all the
contributions in terms of them being both of proper quality (i.e. not
introducing bugs to the system), as well as being non-malicious (i.e. not
introducing backdoors or compromising developer's systems).

Another problem we're facing is how to avoid potential targeted attacks on us
when we're building Qubes binaries, such as ISOs or updates. E.g. we trust
Fedora and Debian Projects to produce un-backdoored (but not necessarily
flawless!) RPM and DEB binary packages, which we subsequently use to build Qubes
templates and Dom0/installation images. I believe it is reasonable for us to
make such a trust decision, because these projects are widespread and if they
decided to publish (and sign) backdoored binaries, they would be risking getting
caught red-handed. However, given Qubes extreme focus on security and its
attractiveness for various "interesting targets", it's absolutely thinkable that
an adversary, who somehow got access to Fedora or Debian projects binary singing
keys, might be able to target the Qubes developers who are responsible for
building the ISOs and/or the updates, and provide them with backdoored packages,
still correctly signed by the distro key.

Finally, there is a problem of trusting us, the Qubes developers, that we really
are not malicious and produce and distribute un-backdoored binaries and ISOs,
matching indeed the source code we publish. Or that our build systems/VMs are
not compromised. Or that our singing keys are not stolen (e.g. through EM leaks)
(e.g. through EM leaks).

We believe we can address most of these concerns with the following mechanisms:

1. By making Qubes building process more defensive, better sandboxed, so that it
   is safe for the builder (i.e. preventing the building system's compromises).
   This especially applies to building Qubes templates. 

2. By making the build process difficult to target. E.g. to be fed with
   backdoored Fedora or Debian packages, even if they were correctly signed with
   (a stolen) distro signing key.

3. By making the templates distribution/installation mechanisms more defensive.
   So that even if the user decided to install a 3rd-party-provided template,
   that turned out to be malicious, that this would not affect other parts of
   the user's Qubes system.

4. By distributing the "trust base" for Qubes binary packages and ISOs using a
   multi-signature signing scheme in which the Qubes Updater checks whether each
   downloaded binary update package has at least M signatures made by one of the
   N trusted, pre-selected parties. This, of course, requires deterministic
   builds.

We have already implemented #1 (sandboxed builds) by introducing support for
building templates in Disposable VMs (see
[here](https://github.com/QubesOS/qubes-builder/blob/master/doc/TemplateDispVMBuild.md)
for details). This will now allow to maintain separate repos for different
templates (Fedora, Debian, Whonix, etc.) with different people responsible for
each, and without the need to trust all of them (or carefully look at their
hands!).

We have also implemented #2 from the list above by using TorVM as a default
netvm for all the VMs used for the 3.0 rc1 ISO build (as per #1 there are now
more than one involved). As an alternative/additional way to prevent developer
targeted attacks, we have considered to implement a variation of a scheme
[proposed by](https://www.whonix.org/wiki/Verifiable_Builds) Patrick Schleizer
of Whonix, but modified in such a way that our builder produces a list of hashes
of all the downloaded components used for the build (rpm/deb packages, tgz
sources, etc.), but ultimately didn't implement it due to other things getting
higher priorities (but still would welcome patches to enable such functionality).

Finally, we have also made quite some progress in implementing #3 from the list
above. This was done by simplifying the template packaging (i.e. getting rid of
all the auxiliary files, such as icon or appmenus, that we can create later,
using the trusted code). This way it is now possible for a user, who is about to
install a potentially untrusted, community-contributed template package in Dom0,
to verify it won't compromise the system (by simply reviewing its metadata and
simple install scripts). In the near future we plan on moving to a better
packaging for the templates (and also unify them with VM backups packaging, and
make these also more suitable for VM migration/sharing) and to automate this
process even more, so that all the template packages were ultimately treated as
untrusted by default, always, without any user action required.

The #4 would be most challenging to get, as currently most projects, including
all Linux distributions, do not build deterministically (i.e. various people
building from the same source code are getting different binaries).
Deterministic builds are, of course, a pre-requisite for this multi signature
scheme for use on ISOs and updates. However, all the work we have made to
sandbox the build process for (untrusted) components, such as the templates, is
also crucial here, as we want to make it safe for many parties to be able to
build Qubes and provide hashes for the binaries independently.

Speaking of our plans, the diagram below shows the roadmap for the rest of the
year for Qubes 3.x and beyond:

<img src="/resources/roadmap-2015-apr.jpg" style="width:150px">

The major new feature coming in the next release (Qubes 3.1) is the management
and pre-configuration infrastructure. This is gonna be a basis for both remote
management (e.g. for corporate Qubes editions) and also for preparing customized
Qubes editions/configurations for specific users/use cases. More on this
important topic in an upcoming article.

We have also invested a lot of work into what we call "core3", our next
generation Qubes management stack, mostly rewritten from scratch by Wojtek
Porczyk and Marek Marczykowski-Górecki. We have originally planned to base Qubes
3.0 on this new core3 stack, but the changes turned out to be too intrusive and
we decided to release Qubes 3.0 using the previous core2 (which is essentially a
Marek's rewrite of the original core I did for Qubes R1, and which we used
throughout Qubes R2), and delay the introduction of core3 until... Qubes 4.0,
planned sometime at the end of the year). In the meantime 3.1, and 3.2 releases
will bring additional features on top of the 3.0 we're releasing today, such as
the management and preconfiguration support mentioned above.

We now also have a [qubes-roadmap](https://github.com/rootkovska/qubes-roadmap)
repo which tracks the high-level release roadmap for 3.x and 4.x, and the
diagram above was generated out of this repo. We're also planning to introduce
qubes-architecture repo with a collection of current documents about Qubes OS
architecture, both implemented, as well as planned for upcoming releases. Stay
tuned!

Speaking of releases and roadmap, it's worth mentioning we have decided to
slightly change the release cycle for Qubes. The new scheme is modeled after the
Linux Kernel release cycle. More on this can be read
[here](http://www.qubes-os.org/doc/VersionScheme/).

One important improvement that hasn't been illustrated in the roadmap diagram is
the introduction of many automatic tests into our build system. We hope that in
the near future this will result in Qubes 3.x releases reaching production
quality much quicker than the earlier R1s and R2s did.

Finally, as many of you has undoubtedly seen, over the last weeks we have
decided to migrate our servers infrastructure out of our private servers (hosted
at AWS) to public services: GitHub.com and SF.net. This is part of a larger plan
to decentralize our project (see above), as well as provide better integrity
protection for some additional resources, such as the documentation (the Trac
wiki we used previously could not provide any form of integrity protection,
which we can now achieve thanks to git signed tags). This is for similar reasons
I decided to move my blog to git/GitHub.com (See my [previous
post](http://blog.invisiblethings.org/2015/02/09/my-new-git-based-blog.html) for
more explanations).

The new Qubes 3.0 ISO can be downloaded from
[here](https://www.qubes-os.org/doc/QubesDownloads/). This is the first official
Qubes OS ISO built and signed by Marek Marczykowski-Górecki, instead of by
myself. As I have recently been involved in a New Project, I decided to hand off
the signing keys for Qubes Release 2 and 3 to Marek. Everybody who has been
following Qubes development in the recent years know Marek very well, I'm sure,
and realize he has been the lead developer of Qubes OS for a while now. For the
record, I still plan on playing a role of Qubes long-term architect/milestones
planner. And I also still keep the Qubes Master Key ;)
