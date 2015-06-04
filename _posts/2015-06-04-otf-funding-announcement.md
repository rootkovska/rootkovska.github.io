---
layout: post
title: Qubes OS Project gets OTF funding to integrate Whonix, improve usability
author: Joanna Rutkowska
---

It's my pleasure to announce that Qubes OS Project has got funding from the
[Open Technology Fund](https://www.opentechfund.org/), and this way joined a
number of other high-profile, open-source
[projects](https://www.opentechfund.org/projects), such as the Tor Project, or
Open Whisper Systems, who also have received substantial funding from the OTF
lately.

OTF does not provide generic funding to projects, but rather sponsors
development of a set of specific features. In our case, OTF agreed to support
the efforts of porting [Whonix](https://www.whonix.org/) (which is a
compartmentalization-aware alternative to
[Tails](https://www.accessnow.org/about/staff)) to Qubes OS, as well as some
more generic work needed to make Qubes OS more usable, both in the context of
hardware compatibility and better UX.

Lots of this work has started many months ago, in fact, as many of you might
have noticed. Majority of the Whonix and Qubes integration has then been
performed by Jason Mehring, a well known Qubes community contributor. This work,
of course, would not be possible, if not for Patrick Schleizer, who founded and
has been maintaining Whonix, in the first place. We thus decided to split the
funding among Jason, Patrick and the ITL (to account for the open source work
done by Marek Marczykowski-Górecki and Wojtek Porczyk on core Qubes components).

The funding we got is pretty modest to be frank: it's $160,000 USD with the
intention to cover a year of development by, essentially, 3-4 skilled developers
working full time, and some even more than full time ;) Even by open source
standards this is very symbolic, as other projects, such as e.g. the Tor
Project,
[pay](https://www.torproject.org/about/findoc/2013-TorProject-Form990.pdf) not
not much less than this amount to _each_ of their core developers. And this is
understandable -- after all nobody wants crappy-paid developers to work on
software onto which people sometimes virtually entrust their lives. But that's
just the first step, and it's still important because it shows how Qubes is
going more mainstream now :)

This funding is to cover the development efforts carried between October 2014
and September 2015 (we have submitted our original proposal back in September
2014). Of course, a large part of this time period has already passed and the
development efforts during that time have been either (1) graciously donated by
the above mentioned developers, (2) partly funded by ITL, and/or (3) funded by
other means (i.e. donations to Whonix project). Now the above mentioned $160k
amount will be partly paied directly to the developers mentioned above as a
(partial) compensation for their work, and partly to ITL as a reimbursement of
the costs it carried while supporting this work over the past months.

Critics might say that these are the US Government money we're taking, and this
might negatively impact credibility of the project... Well, it surely is true
these are the US Government money indeed. The OTF makes this perfectly clear on
their [own website](https://www.opentechfund.org/about/program). Shall we then
really worry about it? Shall our users worry?

I don't think so, and here is why:

1. Being funded by US Government does not necessarily imply maliciousness.
   Occasionally the USG funds something meaningful, such as e.g. NASA or DARPA.

2. Almost always there is _somebody_ (often powerful and of doubtful ethics)
   behind any larger money... Somehow most people are not concerned about how
   ITL managed to keep Qubes development over the last 5 years... Whose money
   have these been, really? And those who think donations or some form of
   crowdfunding could sustain a project like Qubes are advised to look into the
   total amount of [Bitcoins we have
   accumulated](https://blockexplorer.com/address/14zockMSKKp5MK6X2cHJ3mQwm9MwYsJ39j)
   from donations over the course of nearly 2 years (yes, that's around $800,
   for which we could probably afford to pay for... 1-2 days of work a skilled
   system developer ;)

3. Last but not least: we have been trying to keep Qubes development process as
   transparent and infrastructure-independent as technically possible with the
   goal of reducing the amount of trust our users needs to put into... us. This
   includes, e.g. introduction of our [qubes-secpack repo with
   canaries](https://github.com/QubesOS/qubes-secpack), the build process
   improvements I wrote more about in [the previous
   post](http://blog.invisiblethings.org/2015/04/23/qubes-30rc1-and-roadmap.html),
   and also [recently
   discussed](https://groups.google.com/d/msg/qubes-devel/BSz1c8Te7B8/A2UBFh_siTMJ)
   on the mailing list.

In other words: the mere introduction of US government-originating money does
not change much in terms of how trusted the Qubes OS project should be, in my
opinion. Admittedly, the binary distribution process currently remains the
weakest link here (because it's possible our signing keys could be stolen
somehow, or that one of us could be bribed or tortured or blackmailed to give
them away) and this is the case regardless of whether we signed a contract with
the OTF or not. Currently the only way to eliminate this weakness is to build
everything from sources, which actually is quite nicely supported by our
automatic Qubes builder system.

In the future, when deterministic builds become reality, the multi-signature
scheme on binaries would become possible, reducing the problem of
single-point-of-failure with regards of binaries build and distribution process. 

Those who still felt uncomfortable about Qubes getting this kind of funding from
the USG are always welcomed to help us on getting other sources. There is, of
course, nothing that could prevent us from receiving funding from other
organizations at the same time. 

Finally, I would like to end this post by giving a big Thank You to a person who
is directly responsible for making this OTF funding contract a reality: Michael
Carbone. Michael approached me with the idea of submitting a proposal to OTF for
Qubes and Whonix integration back in mid-2014 and offered help with preparation
of the submission and managing of the overall process. Michael's dayjob is at
[Access](https://www.accessnow.org/about/staff), where he helps civil society
and human rights organizations around the world defend themselves against cyber
threats. Naturally this makes Qubes, especially Qubes with Whonix, an attractive
tool for him and his partners. For the conspiracy theorists: yes, Michael used
to work for the US Department of State as he clearly notes in his biographical
note linked above. He also studied in China ;)

You can also read the annoucement by the Whonix Project
[here](https://www.whonix.org/blog/host-and-sponsorship-by-otf).
