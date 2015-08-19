---
layout: page
title: My Keys
permalink: /keys/
---

I would like to use [GnuPG](https://gnupg.org/) for email encryption and signing.
I would like to use it to sign various other things, such as documents, code, and this blog.
I would like to use different keys for different things (e.g. different keys for my personal
email and work email, different one for signing code commits, and yet another
for signing of this blog).

But I can't.

I start to use GPG back in 1996 and I quit in 2000, started and quit again
a few more times in the past 20 years. I quit every time I figure out that
my systems might be compromised.
And because cops can sieze my hw, robbers can rob it, and my government
is not supportive to create an universal security buddy...
... well ... there's no chance for me to use it.
I'd better get a gun, but I'm too scared.

The Master Key
===============

All my keys should be signed by the following Master Signing Key:

    pub   4096R/12345678 0000-00-00
          Key fingerprint = 123...
    uid                  mfp (Master Signing Key)

This key is also attached to this repo in the [key/](/keys/) directory. You
should verify the fingerprint of this master key using some other channel than
just this blog (e.g. [my Email or Skype account) as in case somebody was providing 
you with a falsified repo, they would be sure to also feed you with a falsified master key.

* This key is attached here: [keys/mfp-master-key.asc](/keys/mfp-master-key.asc).

Email encryption keys
======================

The following is my GPG key for work-related email communication:

    pub  4096R/12345678  created: 2015-02-07  expires: 2016-02-07  usage: SC  
                         trust: ultimate      validity: ultimate
    sub  4096R/12345678  created: 2015-02-07  expires: 2016-02-07  usage: E   
    [ultimate] (1). mfp (Email Key) <mfp@>

    gpg> check
    uid  mfp (Email Key) <mfp@>
    sig!3        12345678 0000-00-00  [self-signature]
    sig!         12345678 0000-00-00  mfp (Master Signing Key)

* This key is attached here: [keys/mfp-email.asc](/keys/mfp-email.asc).

Blog signing key
=================

The following key is used to sign this blog repo:

    pub  4096R/12345678  created: 2015-02-07  expires: 2016-02-07  usage: SC  
                         trust: ultimate      validity: ultimate
    sub  4096R/12345678  created: 2015-02-07  expires: 2016-02-07  usage: E   
    [ultimate] (1). mfp (Email Key) <mfp@>

    gpg> check
    uid  mfp (Email Key) <mfp@>
    sig!3        12345678 0000-00-00  [self-signature]
    sig!         12345678 0000-00-00  mfp (Master Signing Key)

* This key is attached here: [keys/mfp-blog-key.asc](/keys/mfp-blog-key.asc).


Note on lack of expiration date on code-signing keys
=====================================================

My signing keys (e.g. blog or code signing keys) do not have expiration
dates. This is not laziness. There is a fundamental problem with using an
expiration date on keys used for code signing (e.g. `git tag -s`), because
I don't know what the outcome should be when one verifies some old code (written
and signed when the key was still valid) in the future when the key has already
expired?

Naturally we would like the old code, written and signed when the key was still
valid, to continue to verify fine also in the future, after the key expires
(and the developer passed away, perhaps).  However, it is very problematic to
prevent the attacker from creating falsified code pretending to be an old one.


Other keys
===========

There is a bunch of other keys in the
[keys/](https://github.com/mfp19/mfp19.github.io/tree/master/keys/)
directory -- these are implicitly signed by my master key by being part of this
(tag-signed) repo.


Other notes
============

* I proudly use empty passphrases on all of my private keys. This is because if
somebody was able to execute malicious code in the VM where a private key
lives, then the key should be considered compromised no matter how complex
passphrase I used to protect it.  Passphrases on private keys are classic
example of [Security Theater](http://en.wikipedia.org/wiki/Security_theater) in
my opinion.

* I don't know how to secure my keys because currently I don't have home 
and peers to physically secure my keys.
