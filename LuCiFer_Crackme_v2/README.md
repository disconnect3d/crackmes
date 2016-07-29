# LuCiFeR's C++ Crackme

Crackme: [http://crackmes.de/users/lucifer/first_c_crackme/](http://crackmes.de/users/lucifer/first_c_crackme/)

The point of the task is to reverse and write a serial key generation.

As you can read in [Readme.txt](Readme.txt) there are three rules of this crackme:

> Rules:
>
> 1. Do not Patch
>
> 2. Sniff a serial for your name
>
> 3. write a keygen

Note: it is detected by virustotal as malware; so just to be sure launch it under a vm...

## Solution

I have deassembled the code using Ida Pro; the assembly can be found in [solution/disass.asm](solution/disass.asm) - however it is much better to deasemble it yourself to see Ida's graph view.

The [solution/keygen.py](solution/keygen.py) contains the keygen I have written along with assembly lines commented out.
