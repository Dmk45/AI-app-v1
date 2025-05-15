; tinylang.asm  — minimal stack VM in x86-64 NASM
; Assemble: nasm -f elf64 tinylang.asm -o tinylang.o
; Link:    ld tinylang.o -o tinylang
; Run:     ./tinylang

section .data
  ; A “program”: PUSH 'A', PRINT, HALT
  prog:    db 0x01, 'A'     ; PUSH 65
           db 0x04          ; PRINT
           db 0xFF          ; HALT
  prog_len equ $ - prog

  stack_space: times 256 db 0   ; 256-byte stack

section .bss
  ; (none)

section .text
  global _start

_start:
  mov   rsi, prog        ; RSI = IP (instruction pointer)
  mov   rbx, stack_space ; RBX = SP (stack pointer)

.loop:
  mov   al, [rsi]        ; fetch opcode
  inc   rsi
  cmp   al, 0x01         ; PUSH
  je    .do_push
  cmp   al, 0x04         ; PRINT
  je    .do_print
  cmp   al, 0xFF         ; HALT
  je    .do_halt

  jmp   .loop            ; unknown opcode → skip

.do_push:
  mov   bl, [rsi]        ; immediate byte
  inc   rsi
  mov   [rbx], bl        ; push onto stack
  inc   rbx
  jmp   .loop

.do_print:
  dec   rbx              ; pop value
  mov   dl, [rbx]
  ; sys_write(1, &dl, 1)
  mov   rax, 1
  mov   rdi, 1
  lea   rsi, [rsp-8]     ; use stack for safe storage
  mov   [rsi], dl
  mov   rdx, 1
  syscall
  jmp   .loop

.do_halt:
  ; sys_exit(0)
  mov   rax, 60
  xor   rdi, rdi
  syscall
