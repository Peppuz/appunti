.data #inserimento dei dati conosciuti
numeri: .word 6,3,5 
somma: .word 0
.text #parte con il codice sorgente del programmma
.globl main #Dichiarazione dei label globali 
main:
	la $t1,numeri#carica l'indirizzo di numeri in un registro temporaneo
	la $t0,somma #carica l'indirizzo dove memorizzare il risultato della somma
	lw $s1,0($t1) #carica il primo numero da numeri nel registro s1
	lw $s2,4($t1)
	lw $s3,8($t1)
	add $s4,$s1,$s2 #effettua la somma tra $s1 e $s2
	add $s4,$s4,$s3 #effettua la somma tra $s4 e $s3
	sw $s4,0($t0)#salva in memoria il risultato della somma tra i 3 numeri
	li $v0,10 #uscita dal programma
	syscall 
	  
	   
