---
layout: post
title: Integrity.
author: mfp19
---

Tags: [txt](#txt) [authorship](#authorship) [judicial](#judicial) [distribution](#distribution)

The fork from Rooty should be complete now. I must reduce a bit all the verbosity I got from the original repo; 
but it's ok; just cosmesis work. I've already spotted some Herrors: I hope my english teachers don't
point their browsers to this URI. 
I'm really looking forward - damned curiosity, we are all alike - for The Real Thing instead:

* integrity, in theory is granted by the merkle tree and the distribution of the tree. 
In practice some italian guys about 2 years ago have produced a proof of concept for 
git history (dates) mangling: the merkle tree grants integrity of the commit (ie: all his objects), 
that is 'a bunch of SHA-1ed key-value pairs'; but in a commit there's no date object. AFAIK. 
That is some sort of coherent with the design rules that Linus gave himself: git had to be simple and fast, 
a minimum standard for teamwork, to build on top with, whenever some team need his own feature added on top to the minimum standard. 
And dates are not strictly needed for every application; time is relative, so at this stage it is overhead. 
Maybe for some applications SHA-512 is more advisable than SHA-1; it depends from the maximum entropy level
for that application. But all the rest looks good to me.

* keys, there's no need of, to bind a commit to a time coordinate. A timestamp could
be applied producing a date=timestamp object on commit; including the timestamp in the 'hashed bunch of objs'.
In this way by manipulating dates ex-post for fraud, the hash would change, revealing the manipulation. 
I say 'fraud' and not 'error correction' because for error correction there's... another commit. 
It's not elegant because it grows the blob, but to track evolution is git's core business; 
to loose details is a system fail; so the blob grows.

* <a name="txt"></a>signing, is not strictly needed for the purpose of certifing dates. Open a text file for writing, 
dump in the Unix Timestamp, and you got the time cert (but changing timezone/calendar will screw it;
other formats won't). Do the same with your name and you got author signature. Text files: amazing simplicity.

I wonder why then [Rooty is suggesting](http://blog.invisiblethings.org/2015/02/09/my-new-git-based-blog.html) 
to use 'git tags -s' to enforce 'integrity'. And I wonder what's the '-f' switch; 
forcing overwrite a tag that is supposed to certify date and author? 
It can do it by 'enlarging the blob' (ie: inflation) or by 'loosing details' (ie: frauds).

<a name="authorship"></a>A part from the tech, that is not really relevant, It looks like she is including 
the 'authorship' in the 'integrity' definition. There's the need of Freud here, not me.
Because it is a pretty common mistake of all the university-grown scientists where the university
enforced the accountability and profitability, by forcing them to produce a minimum amount of papers per year
to measure their performance.

<iframe width="560" height="315" src="https://www.youtube.com/embed/J6lyURyVz7k" frameborder="0" allowfullscreen>John Oliver's Standardized Testing</iframe>

And according to that mindset - but not mine - that mistake is not acceptable: 
'In the name of My Almighty Unsolicited Peer Review, you are fired, Rooty'. 

<a name="judicial"></a>But ... change the context and accountability become a must, judicial: 
'you' who? She didn't set expiring dates on her keys.
She might be dead and someone else abusing of her Self Certified ID;
unless some of her buddies certified her key, see her on daily basis, 
this individual is not a rogue/leech in her w-o-t, etc, etc, etc. 
So, when I see her moving away from blogspot I should ask to her
to appear in a picture with a newspaper in her hands showing
today's news. Yeah, it looks funny, but ... for three years I haven't
been able to look at the 1st-May concert in Rome ... and I was
searching for that because it is one of the main public, 
popular events that can't just disappear.
Well, it doesn't disappear easy.
And yes, I checked up: the concerts have been there.
They didn't in my computer only.

We have two accountability problems here, we can't set her on fire
and 3 years of concerts disappeared from my computer and 
[not only from mine, presumably](https://www.youtube.com/watch?v=ar2rLUhlhvI)!

Damned Hackers, they are all alike: 'unwittingly and unwillingly debunking 
[gov spies](http://www.bgpmon.net/how-hacking-team-helped-italian-special-operations-group-with-bgp-routing-hijack/) and their ancient treachery' :)

<a name="distribution"></a>Let's give up Rooty's Fire and Witch Concerts for a while and face 
the distribution problem: GitHub, as far as I know, is a single administration, 
probably buying storage around the world, using the commercial part of the legal framework. 
As far as I don't replicate this git repo on another Autonomous System, 
one Cease&Desist letter, a bunch of gunmen (with uniforms or not), 
or a trecherous guy working at GitHub, could make it disappear. 
But if I do, If I setup a complex VPN Empire made out of Tor, I2P, Freenet, 
OpenVPN, CiscoWhatever, etc, commonly known as Darknet,
I get the gunmen at home - ex: Kim.Com, Aaron Swartz, SilkRoad, BitCoin, etc - 
because of my [Advanced Digital Heterogeneous Datapedoterrosatanism](https://en.wikipedia.org/wiki/Four_Horsemen_of_the_Infocalypse).
To not even mention that my bank will refuse to serve me the e-bank interface.
You go on My tube and you'll find me dancing Froggin Molly with a 'Usual Suspect' t-shirt.
And I swear (without gpg): it was me, in 2010, after the cops came to my house, 
and I realised that I just got a certificate from Uniformed Riflemen Lobotomisers.
Then I got abducted in DR, set free to AU, escaped to TH, and finally the concerts 
in IT disappeared. 

[Freddy Krueger Glove](http://freddykruegersglove.com/) aka Discaimer: 
I don't show my dancing here because I don't want to ruin your sleep for the next 3 days. 
YOU watch my hairy belly bouncing, YOU are the only one responsible for your Nightmare.

I did everything I could to not being indexed ... but: 
[Once You Go Hack, You Never Go Back](http://www.lombrosity.com/). 
Notice that my picture on lombrosity.com was taken in 2009, but released in 2015.

<iframe width="560" height="315" src="https://www.youtube.com/embed/upybdQMSX9o" frameborder="0" allowfullscreen>Matteo Flora at CCC2015 introducing Lombrosity.com</iframe>

Everything - except Integrity - should be ok, but I'll request a pull so that Rooty knows 
about my fork and can eventually point out exceptions (licenses, mistakes, etc).

