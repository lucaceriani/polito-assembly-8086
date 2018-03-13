N equ 4
.model small
.stack
.data
vett db 34, 56, 72, 11
min  db ?
.code
.startup

mov al, vett[0]      ; minimo al primo elemento del vettore
mov cx, N
mov di, 0
ciclo:
    cmp vett[di], al
    jnb dopo         ; salta se vett[di] >= al
    mov al, vett[di] ; altrimenti salva
dopo:
    inc di
    loop ciclo       ; loop su cx

mov min, al
.exit
end