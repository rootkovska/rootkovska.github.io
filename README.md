Welcome to my n-test for a decentralization-friendly, and integrity-protected publishing tool!
I got attracted by the GitHub Page of a developer that I think have been 
baking great free software in the past, so I tought it is worth to give a try to 
a git-based gpg-signed content repo, that she is using.

Some of the details that she reports ... just don't make sense to me. 
So I'm exploring them (again). Maybe doing it I get a clue.


About Me
=========

See [about.md](/about.md) and [contact.md](/contact.md) for more info.


About this Website/Blog/Repo
============================

I've never had a blog before. To expose what we already
do everyday, in every and each human context, since the first monkey
learned how to talk, is ... reduntant. Wasteful.

To tell you the whole truth I had some sort of blog a bit before 
Google popped up, around year 2000: the reason was that I had 
the need to practice some advanced Perl (or PHP, can't remember) 
programming so I packed togeter an opinion-spitting tool. 
After 6 months I asked myself: 'do the world really needs my opinions?', 
the answer has been 'No'. And because the Perl part was ok, 
I turned the pages down and kept working in the machines room.
The Perl part was working but the whole thing contained 2 articles.

I did my best to stay away from the marketing departments until 2006,
when I figure out that the whole country was spending in marketing... only.
Then I addressed that problem for 2 years. Without results, sadly.

At this point in time - 2015 - I'd like to understand whether git-publishing 
might help to solve some of the issues I've seen at that time, or not. 
Indeed the best part are the internals - git on top of zfs seems redundant - 
but I keep them last to enjoy more at the end.


Content of this repo
---------------------

* My experiments.
* [Contact info](/contact.md) and my [GPG keys](/keys.md)
* Other info about myself and my work


Distribution and hosting
------------------------------

This is distributed as a git-repo, and is primarily hosted on my
GitHub account. You should be able to clone it using the following command:

    git clone https://github.com/mfp19/mfp19.github.io

You can also view the sources at GitHub online
[here](https://github.com/mfp19/mfp19.github.io).

As soon as I can figure out how to decentralise the whole thing, alternative URLs might be added.

One can get notifications about new posts/updates via:

* The [RSS feed](/feed.xml)
* [My GitHub Account] (https://github.com/mfp19/)


(WiP) Integrity protection
--------------------------

This repo should be integrity protected using [git
tags](https://www.kernel.org/pub/software/scm/git/docs/git-tag.html) digitially
signed with [my signing key](/keys/). In order to verify the
authenticity of all or any of the posts, you can use the following command:

    $ git describe --exact-match HEAD
    <some tag>
    $ git tag -v <some tag>

But you can't. Because I'm not using any key.


(WiP) (In)dependency on GitHub
------------------------------

While this repo is hosted on GitHub, and some GitHub-specific features are
exploited in order to make this more available to a wider audience,
specifically GitHub's support for [Static Web
Hosting](https://pages.github.com/), it should be stressed that neither
availability nor integrity of this text requires one to use or trust GitHub.

If, for some reason, GitHub, or an ISP, or whoever in between, decided to
block, falsify, or censor this text, there are dozens of alternative ways of
how this repo (text) could be delivered, e.g. via Tor or other transports, and
thanks to using git signed tags, its integrity could be always verified.

In theory.

In practice current policies are made to enforce accountability of everything that goes
from kids parenthood, to insurances backtracking. Not to enforce anonimity.

Basically in some jurisdictions if you use Tor, you get monitored, by design. 
Some Tor nodes are run by gov agencies themselves, not by volunteers.
Volunteers that have bootstrapped those tools have already been greylisted.
Companies that tried to resist search orders got fined, and individuals running those
businesses clamped and locked. This was the picture at the end of 2011.

And, if you've been involved in some sort of judicial case even worse, examples:
* Assange is in the Ecuador embassy in London; English are very loyal but ... he can't move.
* Snowden is in Russia; Russians have been gentle but ... he can't go back home.

And this is nothing compared to people living in war zones and alike (ex: bad suburbs). 

We were unable to support our own safety:

* to obfuscate the TCP/IP process of selecting best paths in a network; ie: to use Tor.
* to obfuscate your identity; ie: avoid registries, accounts for silly toys, and so on.

In theory "there are dozens of alternative ways of how this repo (blog) could be delivered",
Rutkowska says. In practice, considering the UN/NATO policies of the past 15 years, there aren't. 
Not... for everyone (cfr. RFC3271). 


Patches or pull requests welcome!
----------------------------------

If you find spelling, grammar or other errors in my texts, and feel like
correcting them, please send me a patch like you would do for any other
git-based software project. Thanks!


License/Copyrights
-------------------

This text by mfp is licensed under a [Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 International
License](http://creativecommons.org/licenses/by-nc-sa/4.0/)
inherited by the original author.

