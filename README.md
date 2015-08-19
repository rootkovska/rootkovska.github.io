Welcome to my n-test for a decentralization-friendly,
liberated, and integrity-protected blog and website!
Waiting for a decentralized Internet to come back,
it is worth to give a try to a git-based gpg-signed
content repo.

About Me
=========

My name is mfp, I lead my feet and a limited amount of air over my head
(see [about.md](/about.md) and [contact.md](/contact.md) for more info).
As soon as I can get a clean terminal to access the net I'll be in charge
of my words again too.


About this Website/Blog/Repo
=============================

I've never had a blog before. I hate blogs. To expose what we already
do everyday, in every and each human context, since the first monkey
learned how to talk, is ... wasteful.
In other words: to turn the human chatting into a show is 
a dangerous and insignificant waste of energy until we don't get
rules that guarrantee no actions can be taken upon someone that had a speech.
I had some sort of blog a bit before Google popped up in 2001:
the reason was that I need to practice some advanced Perl programming
so I packed togeter an opinion-spitting tool. After 6 months was down again.


Content of this repo
---------------------

* My experiments.
* [Contact info](/contact.md) and my [GPG keys](/keys/)
* Other info about myself and my work

Distribution and hosting
-------------------------

This blog/website is distributed as a git-repo, and is primarily hosted on my
GitHub account. You should be able to clone it using the following command:

    git clone https://github.com/mfp19/mfp19.github.io

You can also view the sources at GitHub online
[here](https://github.com/mfp19/mfp19.github.io).

As soon as I can figure out how to decentralise the whole thing, alternative URLs might be added.

One can get notifications about new posts/updates via:

* The blog's [RSS feed](/feed.xml)
* [My GitHub Account] (https://github.com/mfp19/)


Integrity protection
---------------------

This blog/repo is integrity protected using [git
tags](https://www.kernel.org/pub/software/scm/git/docs/git-tag.html) digitially
signed with [my blog-signing key](/keys/). In order to verify the
authenticity of all or any of the posts, you can use the following command:

    $ git describe --exact-match HEAD
    <some tag>
    $ git tag -v <some tag>

(In)dependency on GitHub
-------------------------

While this repo is hosted on GitHub, and some GitHub-specific features are
exploited in order to make this more available to a wider audience,
specifically GitHub's support for [Static Web
Hosting](https://pages.github.com/), it should be stressed that neither
availability nor integrity of this blog requires one to use or trust GitHub.
If, for some reason, GitHub, or an ISP, or whoever in between, decided to
block, falsify, or censor this blog, there are dozens of alternative ways of
how this repo (blog) could be delivered, e.g. via Tor or other transports, and
thanks to using git signed tags, its integrity could be always verified. All
the documents contained in this repo (apart from the old Blogger posts which
have been converted automatically) have been created with an assumption to be
easily readable using just a standard text editor or viewer.

Patches or pull requests welcome!
----------------------------------

If you find spelling, grammar or other errors in my blog posts, and feel like
correcting them, please send me a patch like you would do for any other
git-based software project. Thanks!

License/Copyrights
-------------------

This Blog and Website by mfp is licensed under a [Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 International
License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

