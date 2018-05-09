.data
massimo: .word 0

.text
.globl main

main: la $t0,massimo
	  li $v0,5 #syscall eseguira read_int
	  syscall
	  move $s0,$v0 #sposta l'input dato nel registro $s0

	  li $v0,5
	  syscall
	  move $s1,$v0 # sposta il secondo numero in input in $s1

	  bgt $s0,$s1,Else #Va ad Else se e solo se $s0 > $s1
	  sw $s1,0($t0) #il massimo e' il secondo numero e lo salva in memoria
	  j Exit

Else: sw $s0,0($t0)#il massimo e' $s0 e lo salva in memoria

Exit: li $v0,10
	  syscall
