%include 'in_out.asm'

SECTION .data
    div: DB 'Результат:', 0   ; Definir a string "Результат:" corretamente

SECTION .text
GLOBAL _start

_start:
    mov eax, 3              ; Carrega 3 em EBX
    mov ebx, 2              ; Carrega 2 em EAX
    add eax, ebx            ; Soma EBX e EAX (EBX = 3 + 2 = 5)
    mov ecx, 4              ; Carrega 4 em ECX
    mul ecx                 ; Multiplica EAX por ECX (EAX = 5 * 4 = 20)
    add eax, 5              ; Soma 5 em EBX (EBX = 5 + 5 = 10)
    mov edi, eax            ; Copia o resultado para EDI (EDI = 10)

    ; Exibe a mensagem "Результат:"
    mov eax, div            ; Carrega o endereço da string "Результат:" em EAX
    call sprint             ; Exibe a string

    ; Exibe o valor armazenado em EDI
    mov eax, edi            ; Carrega o valor de EDI em EAX (EAX = 10)
    call iprintLF           ; Exibe o valor em EAX

    call quit               ; Encerra o programa
