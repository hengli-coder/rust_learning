core::fmt::ArgumentV1::new:
        sub     rsp, 56
        mov     qword ptr [rsp + 8], rdi
        mov     qword ptr [rsp + 40], rsi
        mov     rax, qword ptr [rsp + 40]
        mov     qword ptr [rsp + 16], rax
        mov     rax, qword ptr [rsp + 8]
        mov     qword ptr [rsp + 48], rax
        mov     rax, qword ptr [rsp + 48]
        mov     qword ptr [rsp], rax
        mov     rax, qword ptr [rsp + 16]
        mov     rcx, qword ptr [rsp]
        mov     qword ptr [rsp + 24], rcx
        mov     qword ptr [rsp + 32], rax
        mov     rax, qword ptr [rsp + 24]
        mov     rdx, qword ptr [rsp + 32]
        add     rsp, 56
        ret

core::fmt::ArgumentV1::new:
        sub     rsp, 56
        mov     qword ptr [rsp + 8], rdi
        mov     qword ptr [rsp + 40], rsi
        mov     rax, qword ptr [rsp + 40]
        mov     qword ptr [rsp + 16], rax
        mov     rax, qword ptr [rsp + 8]
        mov     qword ptr [rsp + 48], rax
        mov     rax, qword ptr [rsp + 48]
        mov     qword ptr [rsp], rax
        mov     rax, qword ptr [rsp + 16]
        mov     rcx, qword ptr [rsp]
        mov     qword ptr [rsp + 24], rcx
        mov     qword ptr [rsp + 32], rax
        mov     rax, qword ptr [rsp + 24]
        mov     rdx, qword ptr [rsp + 32]
        add     rsp, 56
        ret

core::fmt::Arguments::new_v1:
        sub     rsp, 72
        mov     qword ptr [rsp], r8
        mov     qword ptr [rsp + 8], rcx
        mov     qword ptr [rsp + 16], rdx
        mov     qword ptr [rsp + 24], rsi
        mov     qword ptr [rsp + 32], rdi
        mov     qword ptr [rsp + 40], rdi
        cmp     rdx, r8
        jb      .LBB2_2
        mov     rax, qword ptr [rsp + 16]
        mov     rcx, qword ptr [rsp]
        add     rcx, 1
        cmp     rax, rcx
        seta    al
        and     al, 1
        mov     byte ptr [rsp + 55], al
        jmp     .LBB2_3
.LBB2_2:
        mov     byte ptr [rsp + 55], 1
.LBB2_3:
        test    byte ptr [rsp + 55], 1
        jne     .LBB2_5
        mov     rax, qword ptr [rsp + 40]
        mov     rcx, qword ptr [rsp + 32]
        mov     rdx, qword ptr [rsp]
        mov     rsi, qword ptr [rsp + 8]
        mov     rdi, qword ptr [rsp + 16]
        mov     r8, qword ptr [rsp + 24]
        mov     qword ptr [rsp + 56], 0
        mov     qword ptr [rcx], r8
        mov     qword ptr [rcx + 8], rdi
        mov     r8, qword ptr [rsp + 56]
        mov     rdi, qword ptr [rsp + 64]
        mov     qword ptr [rcx + 16], r8
        mov     qword ptr [rcx + 24], rdi
        mov     qword ptr [rcx + 32], rsi
        mov     qword ptr [rcx + 40], rdx
        add     rsp, 72
        ret
.LBB2_5:
        lea     rdi, [rip + .L__unnamed_1]
        lea     rdx, [rip + .L__unnamed_2]
        mov     rax, qword ptr [rip + core::panicking::panic@GOTPCREL]
        mov     esi, 12
        call    rax
        ud2

.LCPI3_0:
        .quad   0x3ff3333333333333
example::main:
        push    rax
        xor     edi, edi
        call    example::visit
        movsd   xmm0, qword ptr [rip + .LCPI3_0]
        call    example::visit
        pop     rax
        ret

example::visit:
        sub     rsp, 120
        movsd   qword ptr [rsp + 24], xmm0
        lea     rax, [rsp + 24]
        mov     qword ptr [rsp + 96], rax
        mov     rdi, qword ptr [rsp + 96]
        mov     rsi, qword ptr [rip + core::fmt::float::<impl core::fmt::Display for f64>::fmt@GOTPCREL]
        mov     rax, qword ptr [rip + core::fmt::ArgumentV1::new@GOTPCREL]
        call    rax
        mov     qword ptr [rsp + 8], rdx
        mov     qword ptr [rsp + 16], rax
        jmp     .LBB4_1
.LBB4_1:
        mov     rax, qword ptr [rsp + 8]
        mov     rcx, qword ptr [rsp + 16]
        mov     qword ptr [rsp + 80], rcx
        mov     qword ptr [rsp + 88], rax
        lea     rsi, [rip + .L__unnamed_3]
        lea     rdi, [rsp + 32]
        mov     edx, 2
        lea     rcx, [rsp + 80]
        mov     r8d, 1
        call    core::fmt::Arguments::new_v1
        jmp     .LBB4_4
.LBB4_2:
        jmp     .LBB4_6
        mov     rcx, rax
        mov     eax, edx
        mov     qword ptr [rsp + 104], rcx
        mov     dword ptr [rsp + 112], eax
        jmp     .LBB4_2
.LBB4_4:
        mov     rax, qword ptr [rip + std::io::stdio::_print@GOTPCREL]
        lea     rdi, [rsp + 32]
        call    rax
        jmp     .LBB4_5
.LBB4_5:
        jmp     .LBB4_7
.LBB4_6:
        mov     rdi, qword ptr [rsp + 104]
        call    _Unwind_Resume@PLT
        ud2
.LBB4_7:
        add     rsp, 120
        ret

example::visit:
        sub     rsp, 120
        mov     dword ptr [rsp + 28], edi
        lea     rax, [rsp + 28]
        mov     qword ptr [rsp + 96], rax
        mov     rdi, qword ptr [rsp + 96]
        mov     rsi, qword ptr [rip + core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt@GOTPCREL]
        mov     rax, qword ptr [rip + core::fmt::ArgumentV1::new@GOTPCREL]
        call    rax
        mov     qword ptr [rsp + 8], rdx
        mov     qword ptr [rsp + 16], rax
        jmp     .LBB5_1
.LBB5_1:
        mov     rax, qword ptr [rsp + 8]
        mov     rcx, qword ptr [rsp + 16]
        mov     qword ptr [rsp + 80], rcx
        mov     qword ptr [rsp + 88], rax
        lea     rsi, [rip + .L__unnamed_3]
        lea     rdi, [rsp + 32]
        mov     edx, 2
        lea     rcx, [rsp + 80]
        mov     r8d, 1
        call    core::fmt::Arguments::new_v1
        jmp     .LBB5_4
.LBB5_2:
        jmp     .LBB5_6
        mov     rcx, rax
        mov     eax, edx
        mov     qword ptr [rsp + 104], rcx
        mov     dword ptr [rsp + 112], eax
        jmp     .LBB5_2
.LBB5_4:
        mov     rax, qword ptr [rip + std::io::stdio::_print@GOTPCREL]
        lea     rdi, [rsp + 32]
        call    rax
        jmp     .LBB5_5
.LBB5_5:
        jmp     .LBB5_7
.LBB5_6:
        mov     rdi, qword ptr [rsp + 104]
        call    _Unwind_Resume@PLT
        ud2
.LBB5_7:
        add     rsp, 120
        ret

.L__unnamed_1:
        .ascii  "invalid args"

.L__unnamed_4:
        .ascii  "/rustc/f1edd0429582dd29cccacaf50fd134b05593bd9c/library/core/src/fmt/mod.rs"

.L__unnamed_2:
        .quad   .L__unnamed_4
        .asciz  "K\000\000\000\000\000\000\000k\001\000\000\r\000\000"

.L__unnamed_5:

.L__unnamed_6:
        .byte   10

.L__unnamed_3:
        .quad   .L__unnamed_5
        .zero   8
        .quad   .L__unnamed_6
        .asciz  "\001\000\000\000\000\000\000"

__rustc_debug_gdb_scripts_section__:
        .asciz  "\001gdb_load_rust_pretty_printers.py"

DW.ref.rust_eh_personality:
        .quad   rust_eh_personality