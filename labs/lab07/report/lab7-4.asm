%include 'in_out.asm'

SECTION .data
msg_x: DB 'Введите значение переменной x: ', 0
msg_a: DB 'Введите значение переменной a: ', 0
res: DB 'Результат: ', 0

SECTION .bss  
x: RESB 80          ; Reserva espaço para o valor de x
a: RESB 80          ; Reserva espaço para o valor de a

SECTION .text
GLOBAL _start
_start:
   ; Exibe a mensagem para inserir o valor de x
   mov eax, msg_x
   call sprint

   ; Lê o valor de x
   mov ecx, x        ; Endereço de x
   mov edx, 80       ; Tamanho máximo de 80 caracteres
   call sread        ; Lê o valor de x

   mov eax, x        ; Coloca o valor de x em eax
   call atoi         ; Converte o valor de x de string para inteiro
   mov edi, eax      ; Armazena o valor de x em edi

   ; Exibe a mensagem para inserir o valor de a
   mov eax, msg_a
   call sprint

   ; Lê o valor de a
   mov ecx, a        ; Endereço de a
   mov edx, 80       ; Tamanho máximo de 80 caracteres
   call sread        ; Lê o valor de a

   mov eax, a        ; Coloca o valor de a em eax
   call atoi         ; Converte o valor de a de string para inteiro
   mov esi, eax      ; Armazena o valor de a em esi

   ; Verifica se x é menor que 5
   cmp edi, 5        ; Compara x (edi) com 5
   jl multiply       ; Se x < 5, vai para a multiplicação

   ; Se x >= 5, subtrai 5 de x
   mov eax, edi      ; Coloca o valor de x em eax
   sub eax, 5        ; Subtrai 5 de x
   mov edi, eax      ; Armazena o novo valor de x em edi
   jmp print_result  ; Vai para imprimir o resultado

multiply:
   ; Se x < 5, multiplica x por a
   mov eax, edi      ; Coloca o valor de x em eax
   mov ebx, esi      ; Coloca o valor de a em ebx
   mul ebx           ; Multiplica eax (x) por ebx (a)
   mov edi, eax      ; Armazena o resultado da multiplicação em edi

print_result:
   ; Exibe a mensagem "Результат: "
   mov eax, res
   call sprint

   ; Exibe o resultado (edi contém o valor)
   mov eax, edi
   call iprintLF

   ; Finaliza o programa
   call quit
