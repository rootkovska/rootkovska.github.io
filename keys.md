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
my systems might be compromised: I had very few peers to use encryption with
and too much bothering to keep the feature in place.
The last time I quit, my keys were on seized laptop while I was building up 
the infrastructure to offload they keys from my laptop. Enough.
And because cops can still seize my hw, courts can keep you in jail 
to force passwords disclosure, robbers can rob it, 
and my government is not supportive to create an universal security buddy... 
well: there's no chance for me to use it.

In some jurisdictions the security systems are more reliable than others;
just cross your fingers. I keep experimenting waiting for better times.

(WiP) The Master Key
====================

All my keys should be signed by the following Master Signing Key:

    pub   4096R/12345678 0000-00-00
          Key fingerprint = 123...
    uid                  mfp (Master Signing Key)

This key is also attached to this repo in the [keys/](/keys/) directory. You
should verify the fingerprint of this master key using some other channel than
just this blog (e.g. [my Email or Skype account) as in case somebody was providing 
you with a falsified repo, they would be sure to also feed you with a falsified master key.

* This key is attached here: [keys/mfp-master-key.asc](/keys/mfp-master-key.asc).

(WiP) Email encryption keys
===========================

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

(WiP) Blog signing key
======================

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


Notes
=====

* My signing keys (e.g. blog and code signing keys) do not have expiration
dates. This is not laziness. It is made on purpose to allow anyone to verify 
some old code (written and signed by me when the key was still valid) in the future 
when the key has already expired. The developer could have been kidnapped
to push malicious code into the code base but ... again ... if a bank
or a government doesn't support this security model and an individual have
no proprerty nor trusted peers to secure the keys himself, 
no way to do The Right Thing.

* I don't have keys because currently I don't have home 
and peers to physically secure my keys. The keys you might see on these page
are for experimenting only; they require for you to contact me to
check the developer integrity (ex: alive, not kidnapped, not blackmailed, etc).
And be sure, by other means, to be talking to the right person.

