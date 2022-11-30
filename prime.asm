#problem 13: prime number


.data 
    userInput: .asciiz "give an integer to check if prime: "
    prime: .asciiz "Prime"
    notPrime: .asciiz "Not prime"
.text
    main:
        li $v0, 4
        la $a0, userInput
        syscall
    
    li $v0, 5
    syscall
    move $t0, $v0
    
    beq $t0,$zero, exit
    beq $t0,2,yes
    
    li $t1,2 # divider
    li $t2,0 # count
    
    loop: bgt $t1,$t0,exit
    
    div $t0,$t1
    mfhi $s0
    
    beqz $s0,no
    addi $t1,$t1,1
    
    
    
    
yes:
    li $v0, 4
    la $a0, prime
    syscall
    j exit
    
no:
    li $v0, 4
    la $a0, notPrime
    syscall
    j exit
    
    
    
exit:
    li $v0, 10
    syscall
