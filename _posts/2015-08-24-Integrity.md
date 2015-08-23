---
layout: post
title: Integrity.
author: mfp19
---

The fork from Rooty should be complete now. I must reduce a bit all the verbosity I got from the original repo; 
but it's ok; just cosmesis.
I'm really looking forward - damned curiosity, we are all alike - for The Real Thing instead:

* integrity, in theory is granted by the merkle tree and the distribution of the tree. 
In practice some italian guys about 2 years ago have produced a proof of concept for 
git history (dates) mangling: the merkle tree grants integrity of the commit (ie: all his objects), 
that is 'a bunch of SHA-1ed key-value pairs'; but in a commit there's no date object. AFAIK. 
That is some sort of coherent with the design rules that Linus gave himself: git had to be simple and fast, 
a minimum standard for teamwork, to build on top with, whenever some team need his own feature added. 
And dates are not strictly needed for every application; time is relative, so at this stage it is overhead. 

* keys, to bind a commit to a time coordinate there's no real need of a key. A timestamp could
be applied producing a date=timestamp object on commit; including the timestamp in the 'hashed bunch of objs'.
In this way by manipulating dates ex-post for fraud, the hash would change, revealing the manipulation. 
I say 'fraud' and not 'error correction' because for error correction there's... another commit. 
It's not elegant because it grows the blob, but to track evolution is git's core business; 
to loose details useful to avoid future mistakes is a system fail, so the blob grows.

* signing, is not strictly needed for the purpose of certifing dates. Open a text file for writing, 
dump in the Unix Timestamp, and you got the time cert. Do the same with your name and you got author signature.
Text files: amazing simplicity.

I wonder why then [Rooty is suggesting](http://blog.invisiblethings.org/2015/02/09/my-new-git-based-blog.html) 
to use 'git tags -s' to enforce 'integrity'. And I wonder what's the '-f' switch; forcing overwrite a tag that is supposed
to certify date and author? It can do it by 'enlarging the blob' (ie: inflation or by 'loosing details' (ie: frauds).

It looks like she is including the 'authorship' in the 'integrity' definition. 
There's the need of Freud here, not me.
Because it is a pretty common mistake of all the university-grown scientists where the university
enforced the accountability and profitability, by forcing them to produce a minimum amount of papers per year
to measure their performance.

<iframe width="560" height="315" src="https://www.youtube.com/embed/J6lyURyVz7k" frameborder="0" allowfullscreen>John Oliver's Standardized Testing</iframe>

And according to that mindset - but not mine - that mistake is not acceptable: 'you are fired, Rooty'. 
But ... 'you' who? She didn't set expiring dates on her keys. 
She might be dead and someone else abusing of her Self Certified ID. 
We have an accountability problem here, we can't set her on fire!
And I don't know wether is possible or not to 'deflate the git blob', and how.

Damned Hackers, they are all alike: 'unwittingly and unwillingly debunking spies and their ancient treachery' ;)

Finally there's the distribution problem: github, as far as I know, is a single administration, probably buying 
storage around the world, using the commercial part of the legal framework. As far as I don't replicate this 
git repo on another Autonomous System, one Cease&Desist letter, a bunch of gunmen (with uniforms or not), 
or a trecherous IT Guy working at GitHub, could make it disappear. 
But if I do, If I setup a complex VPN Empire made out of Tor, I2P, Freenet, OpenVPN, CiscoWhatever, etc, 
I get the gunmen at home - ex: Kim.Com, Aaron Swartz, etc - because of my Advanced Digital Pedoterrosatanism.

You go on My tube and you'll find me dancing Froggin Molly with a 'Usual Suspect' t-shirt.
And I swear (without gpg): it was me, in 2010, after the cops came to my house, and I realised that
I just got a cert from Uniformed Riflemen Lobotomisers.

[Freddy Krueger Glove](http://freddykruegersglove.com/): I don't show it here because 
I don't want to ruin your sleep for the next 3 days. YOU watch my hairy belly, 
YOU are the only responsible for your nightmares.

Everything should be ok but I'll request a pull so that Rooty knows about my fork and can eventually 
point out exceptions (licenses, mistakes, etc).

