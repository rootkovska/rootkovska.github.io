#### Red Pill... or how to detect VMM using (almost) one CPU instruction

[Joanna Rutkowska](mailto:joanna@invisiblethings.org)

Swallowing the Red Pill is more or less equivalent to the following code
(returns non zero when in Matrix):

         int swallow_redpill () {
           unsigned char m[2+4], rpill[] = "\x0f\x01\x0d\x00\x00\x00\x00\xc3";
           *((unsigned*)&rpill[3]) = (unsigned)m;
           ((void(*)())&rpill)();
           return (m[5]>0xd0) ? 1 : 0;
         }
      

The heart of this code is actually the SIDT instruction (encoded as
`0F010D[addr]`), which stores the contents of the interrupt descriptor
table register (IDTR) in the destination operand, which is actually a
memory location. What is special and interesting about SIDT instruction
is that, it can be executed in non privileged mode (ring3) but it
returns the contents of the sensitive register, used internally by
operating system.

Because there is only one IDTR register, but there are at least two OS
running concurrently (i.e. the host and the guest OS), VMM needs to
relocate the guest's IDTR in a safe place, so that it will not conflict
with a host's one. Unfortunately, VMM cannot know if (and when) the
process running in guest OS executes SIDT instruction, since it is not
privileged (and it doesn't generate exception). Thus the process gets
the relocated address of IDT table. It was observed that on VMWare, the
relocated address of IDT is at address `0xffXXXXXX`, whereas on Virtual
PC it is `0xe8XXXXXX`. This was tested on VMWare Workstation 4 and
Virtual PC 2004, both running on Windows XP host OS.

BTW, I would be more then happy if anyone test it on different VMMs,
running on different host OSes and send me the results. I could then
create a table of known addresses of IDTR, which could potentially be
used to not only detect the VMM presence but also its version and the
host OS...

I came across this strange behavior of SIDT instruction a few years ago,
when I was testing [Suckit rootkit](http://phrack.org/show.php?p=58&a=7)
on VMWare. I noticed that it failed to load on VMWare whereas it seemed
to work fine on the same distribution ran outside VM. After spending
many hours I figured out that the problematic instruction was actually
SIDT, which was used by Suckit to get the address of the IDT table, and
to hook its 0x80 entry through `/dev/kmem` device.

However, I was not the first one who discovered this trick. Shortly
after my adventure with Suckit I found a very good [USENIX
paper](http://www.cs.nps.navy.mil/people/faculty/irvine/publications/2000/VMM-usenix00-0611.pdf)
about problems when implementing Virtual Machines on Intel processors,
discussing of course SIDT problem, as well as many others. This paper is
really worth reading!

So now, here is the simple code, written in C, which should compile on
any all Intel based OS. Just in case you don't have the C compiler for
Windows, there is also a binary version attached.

[`redpill.c`](http://invisiblethings.org/tools/redpill.c)\
 [`redpill.exe`](http://invisiblethings.org/tools/redpill.exe)

NOTE: this program will fail on systems with PAX/X\^W/grsecurity,
protection (as it was pointed out by Brad Spengler) since the `rpill`
variable is not marked as executable. To make it run in such systems,
`mprotect()` should be used to mark `rpill` with `PROT_EXEC` attribute.
Another solution would be to just use `asm()` keyword instead of
shellcode-like buffer. However, this program should be rather considered
as a skeleton to build into your own shellcode, rather then standalone
production class tool;) My goal was to make it as simple and portable as
possible. That's why I didn't use `asm()` nor `mprotect()` since they
are system or compiler dependent.

I am also aware of another implementation of this technique, as well as
some other tricks to fingerprint VMWare, which can be found at
<http://www.trapkit.de/>.
