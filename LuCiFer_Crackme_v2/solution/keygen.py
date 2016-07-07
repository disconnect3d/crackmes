# Solution to http://crackmes.de/users/lucifer/first_c_crackme/
# Solved by disconnect3d ; www.disconnect3d.pl

import sys
import ctypes


def keygen(name):
    # NOTE: Values in comments are written in hex, so "ebp-410" means "ebp-0x410"
    # (this convention is taken from x64dbg)
    
    edx = len(name)             # strlen(...) ; mov edx, eax
    edx *= 0x875CD              # imul edx, edx, 875CD
    eax = 0x51EB851F            # mov eax, 51EB851F
    
    # mul edx
    # This multiplies eax * edx and saves:
    #   higher part - into edx
    #   lower part  - into eax
    multiplied = eax * edx      # mul edx
    edx = multiplied >> 32
    eax = multiplied & 0xFFFFFFFF
    
    eax = edx                               # mov eax, edx
    
    eax = eax >> 5                          # shr eax, 5
    
    eax = ctypes.c_uint32(eax * 0xFFFFFC90) # imul eax, eax, FFFFFC90

    edx = 0                                 # mov edx, 0

    esp2 = edx                              # push edx
    esp = eax                               # push eax
    
    # fild qword ptr ss:[esp]               # fetch top of the stack (saved EAX) to double, store it in ST(0) 

    # lea esp, dword ptr ss:[esp+8] # not needed for calculating serial value
    
    # fstp qword ptr ss:[ebp-410]           # save ST(0) into ebp-410
    # more http://x86.renejeschke.de/html/file_module_x86_id_117.html
    
    #### From now, in ebp-410 we've got EAX converted to DOUBLE
    
    # fld qword ptr ss:[ebp-410]            # push the double value back to the FPU stack
    # fstp qword ptr ss:[esp+8]             # save ST(0) onto esp+8
    
    #### After those, esp+8 contains the EAX converted to DOUBLE (8 bytes)
    # (so for 123 in EAX the esp+8 contains double that is almost equal to 123.0)
    # {almost because it is floating point ^^}
    
    #### It is then treated as integer, because of "%i" format used in the sprintf
    # so to sprintf:
    # esp   => points to the string, where the sprintf will save formatted string
    # esp+4 => points to format string = "%i-x019871"
    # esp+8 => first four bytes of our double
    
    # If our double is:
    #   00 00 00 02    15 E4 EF 41
    #   The esp+8 treated as DWORD will be: 0x02000000 which is 33554432
    
    ### Below there is reinterpret of double to int
    # in C this would look like:
    #   v = (double)(eax)
    #   i = *((int*)(&v))
    double_val = ctypes.c_double(eax.value)
    ptr = ctypes.cast(ctypes.pointer(double_val), ctypes.POINTER(ctypes.c_int32))
    int_val = ptr.contents.value
    
    return "%i-x019871" % int_val

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: %s <user>" % sys.argv[0])
        sys.exit()
    
    print(keygen(sys.argv[1]))
