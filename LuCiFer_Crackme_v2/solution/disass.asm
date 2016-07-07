.text:004014E2 ; int __cdecl main(int argc, const char **argv, const char **envp)
.text:004014E2                 public _main
.text:004014E2 _main           proc near               ; CODE XREF: ___mingw_CRTStartup+E5p
.text:004014E2
.text:004014E2 size            = dword ptr -418h
.text:004014E2 var_414         = dword ptr -414h
.text:004014E2 var_410         = qword ptr -410h
.text:004014E2 var_408         = dword ptr -408h
.text:004014E2 hashedStr       = byte ptr -308h
.text:004014E2 serial          = byte ptr -208h
.text:004014E2 name            = byte ptr -108h
.text:004014E2 var_4           = dword ptr -4
.text:004014E2 argc            = dword ptr  8
.text:004014E2 argv            = dword ptr  0Ch
.text:004014E2 envp            = dword ptr  10h
.text:004014E2
.text:004014E2                 push    ebp
.text:004014E3                 mov     ebp, esp
.text:004014E5                 push    edi
.text:004014E6                 sub     esp, 424h
.text:004014EC                 and     esp, 0FFFFFFF0h
.text:004014EF                 mov     eax, 0
.text:004014F4                 mov     [ebp+size], eax
.text:004014FA                 mov     eax, [ebp+size] ; size
.text:00401500                 call    __alloca
.text:00401505                 call    ___main
.text:0040150A                 movzx   eax, ds:byte_401290
.text:00401511                 mov     [ebp+name], al
.text:00401517                 lea     edi, [ebp+name+1]
.text:0040151D                 cld
.text:0040151E                 mov     ecx, 0FEh
.text:00401523                 mov     al, 0
.text:00401525                 rep stosb
.text:00401527                 movzx   eax, ds:byte_401290
.text:0040152E                 mov     [ebp+serial], al
.text:00401534                 lea     edi, [ebp+serial+1]
.text:0040153A                 cld
.text:0040153B                 mov     ecx, 0FEh
.text:00401540                 mov     al, 0
.text:00401542                 rep stosb
.text:00401544                 movzx   eax, ds:byte_401290
.text:0040154B                 mov     [ebp+hashedStr], al
.text:00401551                 lea     edi, [ebp+hashedStr+1]
.text:00401557                 cld
.text:00401558                 mov     ecx, 0FEh
.text:0040155D                 mov     al, 0
.text:0040155F                 rep stosb
.text:00401561                 movzx   eax, ds:byte_401290
.text:00401568                 mov     byte ptr [ebp+var_408], al
.text:0040156E                 lea     edi, [ebp+var_408+1]
.text:00401574                 cld
.text:00401575                 mov     ecx, 0FEh
.text:0040157A                 mov     al, 0
.text:0040157C                 rep stosb
.text:0040157E                 fldz
.text:00401580                 fstp    [ebp+var_410]
.text:00401586                 mov     [ebp+var_414], 1
.text:00401590                 mov     dword ptr [esp], offset aCls ; "cls"
.text:00401597                 call    _system
.text:0040159C                 mov     dword ptr [esp+4], offset asc_401393 ; "###########################\n"
.text:004015A4                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:004015AB                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:004015B0                 mov     dword ptr [esp+4], offset aMyFirstCCrackm ; "# My First C++ Crackme    #\n"
.text:004015B8                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:004015BF                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:004015C4                 mov     dword ptr [esp+4], offset aShouldBeVeryEa ; "# Should be very easy 4 U!#\n"
.text:004015CC                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:004015D3                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:004015D8                 mov     dword ptr [esp+4], offset aIfNotNoobedByM ; "# if not -> noobed by me  #\n"
.text:004015E0                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:004015E7                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:004015EC                 mov     dword ptr [esp+4], offset aCByLucifer ; "#     (C) by LuCiFeR      #\n"
.text:004015F4                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:004015FB                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:00401600                 mov     dword ptr [esp+4], offset asc_401430 ; "###########################\n\n\n"
.text:00401608                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:0040160F                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:00401614                 mov     dword ptr [esp+4], offset aYourName ; "Your Name: "
.text:0040161C                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:00401623                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:00401628                 lea     eax, [ebp+name]
.text:0040162E                 mov     [esp+4], eax    ; int
.text:00401632                 mov     dword ptr [esp], offset __ZSt3cin ; std::istream *
.text:00401639                 call    __ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ ; std::operator>><char,std::char_traits<char>>(std::basic_istream<char,std::char_traits<char>> &,char*)
.text:0040163E                 mov     dword ptr [esp+4], offset aYourSerial ; "Your Serial: "
.text:00401646                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:0040164D                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:00401652                 lea     eax, [ebp+serial]
.text:00401658                 mov     [esp+4], eax    ; int
.text:0040165C                 mov     dword ptr [esp], offset __ZSt3cin ; std::istream *
.text:00401663                 call    __ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ ; std::operator>><char,std::char_traits<char>>(std::basic_istream<char,std::char_traits<char>> &,char*)
.text:00401668                 lea     eax, [ebp+name]
.text:0040166E                 mov     [esp], eax      ; char *
.text:00401671                 call    _strlen
.text:00401676                 mov     edx, eax
.text:00401678                 imul    edx, 875CDh
.text:0040167E                 mov     eax, 51EB851Fh
.text:00401683                 mul     edx
.text:00401685                 mov     eax, edx
.text:00401687                 shr     eax, 5
.text:0040168A                 imul    eax, 0FFFFFC90h
.text:00401690                 mov     edx, 0
.text:00401695                 push    edx
.text:00401696                 push    eax
.text:00401697                 fild    qword ptr [esp]
.text:0040169A                 lea     esp, [esp+8]
.text:0040169E                 fstp    [ebp+var_410]
.text:004016A4                 fld     [ebp+var_410]
.text:004016AA                 fstp    qword ptr [esp+8]
.text:004016AE                 mov     dword ptr [esp+4], offset aIX019871 ; "%i-x019871"
.text:004016B6                 lea     eax, [ebp+hashedStr]
.text:004016BC                 mov     [esp], eax      ; char *
.text:004016BF                 call    _sprintf
.text:004016C4                 lea     eax, [ebp+hashedStr]
.text:004016CA                 mov     [esp+4], eax    ; char *
.text:004016CE                 lea     eax, [ebp+serial]
.text:004016D4                 mov     [esp], eax      ; char *
.text:004016D7                 call    _strcmp
.text:004016DC                 mov     [ebp+var_414], eax
.text:004016E2                 cmp     [ebp+var_414], 0
.text:004016E9                 jz      short loc_401719
.text:004016EB                 mov     dword ptr [esp+4], offset aErrorNotACorre ; "Error :: Not a correct Serial\n"
.text:004016F3                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:004016FA                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:004016FF                 mov     dword ptr [esp], offset aPause ; "pause"
.text:00401706                 call    _system
.text:0040170B                 mov     dword ptr [esp], offset aCls ; "cls"
.text:00401712                 call    _system
.text:00401717                 jmp     short loc_401759
.text:00401719 ; ---------------------------------------------------------------------------
.text:00401719
.text:00401719 loc_401719:                             ; CODE XREF: _main+207j
.text:00401719                 mov     dword ptr [esp+4], offset aCorrectGoodWor ; "Correct :: Good Work\n"
.text:00401721                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:00401728                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:0040172D                 mov     dword ptr [esp+4], offset aNowWriteAKeyge ; "Now write a KeyGen!\n\n\n"
.text:00401735                 mov     dword ptr [esp], offset __ZSt4cout ; std::ostream *
.text:0040173C                 call    __ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc ; std::operator<<<std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &,char const*)
.text:00401741                 mov     dword ptr [esp], offset aPause ; "pause"
.text:00401748                 call    _system
.text:0040174D                 mov     dword ptr [esp], offset aCls ; "cls"
.text:00401754                 call    _system
.text:00401759
.text:00401759 loc_401759:                             ; CODE XREF: _main+235j
.text:00401759                 mov     eax, 0
.text:0040175E                 mov     edi, [ebp+var_4]
.text:00401761                 leave
.text:00401762                 retn
.text:00401762 _main           endp
.text:00401762
.text:00401762 ; ---------------------------------------------------------------------------