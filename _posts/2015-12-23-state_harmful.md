---
layout: post
title: State considered harmful - A proposal for a stateless laptop (new paper)
author: Joanna Rutkowska
---

Two months ago I have [published][x86_harmful_post] a detailed survey of various
security-related problems plaguing the Intel x86 platforms. While the picture
painted in the paper was rather depressing, I also promised to release a 2nd
paper discussing -- what I believe to be -- a reasonably simple and practical
solution addressing most of the issues discussed in the 1st paper. Today I'm
releasing this 2nd paper.

I think it is the first technical paper I've written which is _not_ backed by a
working proof-of-concept. Incidentally, it might also be one of the most
important ones I have authored or co-authored.

Originally my plan was to team up with several other people and get a prototype
available at the time of publication of this paper. But it turned out it would
take way more time than I originally though, and so would delay the publication
of this 2nd article until probably mid next year or so. Because I believe there
is a benefit to publish this idea sooner than later, I decided to wait no
longer.

Also, on Sunday (Dec 27th), I will be [presenting][32c3_presentation] on this
topic at the [32c3][32c3] in Hamburg, Germany. It might seem surprising to some
that I'm revealing the content of my upcoming presentation a few days before the
event, admittedly a rather unusual approach, at least among the "security
researchers" circles ;) The reason for doing that is that I won't have enough
time to discuss all the technical details during the 1-hour-only presentation,
especially that it is supposed to cover both the content of the 1st and 2nd
paper.  Yet, computer security is one of these tricky fields to which "the devil
is in the details" saying applies like in few other disciplines. So, I wanted to
give an opportunity, to some at least, to understand all the details of the
presented idea, hoping this will result in more interesting discussions at the
congress.

Without boring you, my dear reader, any longer -- the PDF of the paper is
[here][state_harmful_pdf], and the Markdown sources can be found in [this
repo][state_harmful_gh].

Marry Xmas everyone, and looking forward see some of you at the 32c3, in just a
couple of days!

[x86_harmful_post]:     http://blog.invisiblethings.org/2015/10/27/x86_harmful.html
[32c3_presentation]:    https://events.ccc.de/congress/2015/Fahrplan/events/7352.html
[32c3]:                 https://events.ccc.de/congress/2015/wiki/Main_Page
[state_harmful_pdf]:    /papers/2015/state_harmful.pdf
[state_harmful_gh]:     https://github.com/rootkovska/state_harmful
