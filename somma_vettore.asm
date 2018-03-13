dim equ 3
.model small
.stack
.data
vett dw 1, 2, 3
res dw ?
.code
.startup
mov di, 0
mov ax, 0
mov cx, dim
ciclo:
    add ax, vett[di]
    add di, 2
loop ciclo

mov res, ax

.exit
end