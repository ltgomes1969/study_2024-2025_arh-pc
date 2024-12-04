%include 'in_out.asm'

SECTION .data
    msg: DB "Введите x:", 0           ; Solicita a entrada de x
    result: DB "15x - 9 =: ", 0        ; Mensagem para exibir o resultado

SECTION .bss
    x: RESB 80                         ; Reserva espaço para a entrada de x
    res: RESB 90                        ; Reserva espaço para o resultado

SECTION .text
GLOBAL _start

_start:
    ; Exibe a mensagem "Введите x:"
    mov eax, msg
    call sprint

    ; Lê a entrada de x
    mov ecx, x
    mov edx, 80
    call sread

    ; Converte a string de entrada para um valor inteiro
    mov eax, x
    call atoi

    ; Chama a função de cálculo para resolver 15x - 9
    call _calcul

    ; Exibe a mensagem "15x - 9 =: "
    mov eax, result
    call sprint

    ; Exibe o resultado de 15x - 9
    mov eax, [res]
    call iprintLF

    ; Finaliza o programa
    call quit

_calcul:
    mov ebx, 15
    imul eax, ebx
    sub eax, 9
    mov [res], eax
    ret
