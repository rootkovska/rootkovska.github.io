---
layout: page
title: My Keys
permalink: /keys/
---

I use [GnuPG](https://gnupg.org/) for email encryption and signing. I also use
it to sign various other things, such as documents, code, and this blog.

I use different keys for different things (e.g. different keys for my personal
email and work email, different one for signing Qubes commits, and yet another
for signing of this blog). Typically these keys are kept in different VMs, and
often still separate from the VMs where they are actually being used thanks to
[Qubes Split GPG](https://wiki.qubes-os.org/wiki/UserDoc/SplitGpg) feature.

The Master Key
===============

All my keys are signed by the following Master Signing Key:

    pub  4096R/D9AFBB99  created: 2015-02-07  expires: never       usage: SC  
                         trust: ultimate      validity: ultimate
                         [ultimate] (1). Joanna Rutkowska (Master Signing Key)

This key is also attached to this repo in the [key/](/keys/) directory. You
should verify the fingerprint of this master key using some other channel than
just this blog (e.g. [my Twitter account](https://twitter.com/rootkovska/), or
a [Qubes Mailing List](https://groups.google.com/forum/#!forum/qubes-devel)) as
in case somebody was providing you with a falsified repo, they would be sure to
also feed you with a falsified master key.

* This key is attached here: [keys/joanna-master-key.asc](keys/joanna-email-itl.asc).

Email encryption keys
======================

The following is my GPG key for work-related email communication:

    pub  4096R/0DDC6718  created: 2015-02-07  expires: 2016-02-07  usage: SC  
                         trust: ultimate      validity: ultimate
    sub  4096R/0E467029  created: 2015-02-07  expires: 2016-02-07  usage: E   
    [ultimate] (1). Joanna Rutkowska (ITL Email Key) <joanna@invisiblethingslab.com>

    gpg> check
    uid  Joanna Rutkowska (ITL Email Key) <joanna@invisiblethingslab.com>
    sig!3        0DDC6718 2015-02-07  [self-signature]
    sig!         D9AFBB99 2015-02-07  Joanna Rutkowska (Master Signing Key)

* This key is attached here: [keys/joanna-email-itl.asc](keys/joanna-email-itl.asc).

Blog signing key
=================

The following key is used to sign this blog repo:

    pub  4096R/FF112935  created: 2015-02-07  expires: never       usage: SC  
                         trust: ultimate      validity: ultimate
                         [ultimate] (1). Joanna Rutkowska (Blog Signing Key)

    gpg> check
    uid  Joanna Rutkowska (Blog Signing Key)
    sig!3        FF112935 2015-02-07  [self-signature]
    sig!         D9AFBB99 2015-02-07  Joanna Rutkowska (Master Signing Key)

* This key is attached here: [keys/joanna-blog-key.asc](keys/joanna-blog-key.asc).


Note on lack of expiration date on code-signing keys
=====================================================

My signing keys (e.g. blog or Qubes code signing keys) do not have expiration
dates. This is not laziness. There is a fundamental problem with using an
expiration date on keys used for code signing (e.g. `git tag -s`), because
it is unclear what the outcome should be when one verifies some old code
(written and signed when the key was still valid) in the future when the key
has already expired?

Naturally we would like the old code, written and signed when the key was still
valid, to continue to verify fine also in the future, after the key expires
(and the developer passed away, perhaps).  However, it is very problematic to
prevent the attacker from creating falsified code pretending to be an old one.


Other keys
===========

There is a bunch of other keys in the [keys/](/keys/) directory -- these are implicitly signed by my master key by being part of this (tag-signed) repo.


Other notes
============

* I proudly use empty passphrases on all of my private keys. This is because if
somebody was able to execute malicious code in the VM where a private key
lives, then the key should be considered compromised no matter how complex
passphrase I used to protect it.  Passphrases on private keys are classic
example of [Security Theater](http://en.wikipedia.org/wiki/Security_theater) in
my opinion.

* I have included also the [Qubes Master Signing Key](https://wiki.qubes-os.org/wiki/VerifyingSignatures) in this repo [here](). I don't consider it proper to sign it with my personal Master Key, or, especially, the other way around. It is signed implicitly by being part of this (signed) repo though.

