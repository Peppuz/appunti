.data
stringa: .asciiz "Hello World"
dim: .word 0
stringaDimensione: .ascii "La dimensione della stringa e' "
fine: .asciiz ""

.text
.globl main

main: la $t0,stringa #caricamento indirizzo stringa
      lb $s0,0($t0) #lettura primo carattere stringa
      la $t1,fine 
      lb $s1,0($t1)
      move $s2,$zero


loop: beq $s0,$s1,exit #test termine stringa
      addi $s2,$s2,1 #aggiorna dimensione della stringa
      addi $t0,$t0,1 #aggiorna indice della stringa
      lb $s0,0($t0)#legge un carattere dalla memoria
      j loop #ritorna all'inizio del loop


exit: li $v0,4
      la $a0,stringaDimensione #stampa la frase
      syscall
      li $v0,1
      addu $a0,$zero,$s2 #stampa dimensione della stringa
      syscall
      li $v0,10
      syscall
