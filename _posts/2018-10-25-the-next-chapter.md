---
layout: post
title: "The Next Chapter: From the Endpoint to the Cloud"
author: Joanna Rutkowska
---

Earlier this year, I decided to take a sabbatical. I wanted to reflect on my
infosec work and decide what I would like to focus on in the coming years. As
you probably know, I've spent the last nine years mostly fighting the battle to
secure the endpoint, more specifically creating, developing, architecting, and
promoting [Qubes OS](https://www.qubes-os.org/), as well as the more general
concept of ["Security through
Distrusting"](https://www.blackhat.com/eu-17/briefings.html#security-through-distrusting).

Over these past nine years, Qubes OS has grown from a research-inspired
proof-of-concept into a reasonably mature, large open-source project with
dozens of [contributors](https://www.qubes-os.org/team/) and tens of thousands
of [users](https://www.qubes-os.org/statistics/), including some high-profile
security [experts](https://www.qubes-os.org/experts/).

There are still many challenges ahead for Qubes, however. The primary two are
improving hardware compatibility and UX. I think addressing these challenges
will mostly be an iterative process of gradual improvement, but it will
nonetheless require a lot of time and resources.

Another challenge is the trustworthiness of the [x86
platform](https://blog.invisiblethings.org/papers/2015/x86_harmful.pdf). Again,
I remain optimistic that many things could be improved on this front, as well
(see, for example, my proposal for a [stateless laptop
design](https://blog.invisiblethings.org/papers/2015/state_harmful.pdf)).
Admittedly, such work will require significantly more resources, but I know
there is a lot of interest in this area, and it just needs proper coordination
to happen.

Despite all of these interesting challenges (especially with platform
trustworthiness), I've decided I'd like to switch my focus to something other
than endpoint security. While I still believe that the security of our digital
lives starts and ends with the trustworthiness of the client devices we use
(which today include much more than just laptops and desktops, of course), I
also recognize that the state of endpoint device security has significantly
improved over the past decade. At the same time, most of our data and activities
have migrated from local devices to the cloud.

And yet, there are fundamental problems with [cloud
trustworthiness](https://twitter.com/rootkovska/status/1051392157096001536), or
the lack thereof. These problems could be summarized as the need for users (i.e.
all of us) to be _forced_ to trust three different entities: (1) the service
providers who own our data (e.g. the vendor of your fitness tracking app), (2)
the hosting infrastructure owners, who can both access our data as well as deny
us use of the service at their discretion (e.g. AWS, Azure, GCP), and (3) the
networking infrastructure operators, who can also selectively cut us off from
the services (e.g. to implement some form of censorship).

These are very important problems, in my opinion, and I'd like to work now on
making the cloud more trustworthy, specifically by limiting the amount of trust
we have to place in it.

So, this month I've joined the [Golem Project](https://golem.network/) as a
Chief Strategy Officer, also doubling as Chief Security Officer (conveniently,
both roles have the same CSO acronym :) The double nature of my role emphasizes
the close relationships among the long-term roadmap, technical architecture,
as well as product- and operations-security in Golem.

Why Golem? Because Golem is a very unique project. Golem has been on a mission
to build a "decentralized computer" out of a heterogeneous network of
third-party provided computers. Founded two years ago through a very successful
crowdfunding campaign, it instantly gained an impressive amount of funding,
which allowed it to build a strong development team (incidentally, mostly based
in my favorite city -- Warsaw).

The distributed funding model has also essentially eliminated two common
obstacles most tech startups face: lack of money to hire enough people and the
need to implement investors' (rather than the founders') agenda. In this
respect Golem seems to be as independent as one could realistically imagine.

Most importantly, we (ITL), have already been
[working](https://blog.invisiblethings.org/2018/06/11/graphene-ng.html) with
Golem over the past year. During that time I've had enough time to get to know
some of the key people in the project, understand their personal agendas, and
conclude they might be very much inline with my own.

As for the future of Qubes, I don't think much will change here. In recent
years, [Marek
Marczykowski-Górecki](https://www.qubes-os.org/team/#marek-marczykowski-górecki)
has been effectively leading most of the day-to-day efforts with Qubes OS
development, while I've focused mostly on long-term architecture planning and
various research activities, such as our SGX-related work. Marek will continue
to lead Qubes now, so I'm reassured about the future of the project. I will also
remain as an advisor to the Qubes OS Project, as well as... its user, though I've
recently also been embracing other systems, including -- of course -- the cloud.

Finally, I'd like to thank my (present and past) ITL colleagues. We have
undertaken quite a few projects together, of which Qubes OS is probably the most
challenging and spectacular. Yet it was hardly the only one. There was also all
the (allegedly
[pioneering](https://twitter.com/dwizzzleMSFT/status/1006733071511519232))
offensive system security research done together with Rafał Wojtczuk and Alex
Tereshkin. This research was instrumental in our subsequent work on Qubes OS,
and I think it will again prove useful for my work on Golem.
