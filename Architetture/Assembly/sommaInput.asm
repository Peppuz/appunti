.data
risultato: .word 0
stampa: .asciiz "La somma tra i due numeri è "
.text
.globl main
main:
	   li $v0,5 #imposta syscall sulla funzione read_int
	   syscall
	   move $s0,$v0 #sposto il numero inserito nel registro $s0
	   
	   li $v0,5 #imposta syscall sulla funzione read_int
	   syscall
	   move $s1,$v0 #sposto il numero inserito nel registro $s1
	   
	   add $s2,$s0,$s1 #somma tra i due numeri inseriti
	   sw $s2,risultato
	   
	   la $a0,stampa #imposta come argomento
	   li $v0,4 #imposta syscall su print_string
	   syscall
	   move $a0,$s2 #imposta come argomento il risultato della somma
	   li $v0,1 #imposta syscall su print_int
	   syscall
	   
	   li $v0,10 #imposta syscall su exit
	   syscall
	   
	   
