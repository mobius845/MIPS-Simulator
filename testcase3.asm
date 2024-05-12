addi $7, $0, 5     # $7 init to 5
addi $8, $0, 10    # $8 init to 10
sw $7, 0x2010($0)  # A[0] = 5
sw $8, 0x2014($0)  # A[1] = 10
lw $9, 0x2010($0)  # Load A[0] into $9
lw $10, 0x2014($0) # Load A[1] into $10
add $11, $9, $10  # Add A[0] and A[1], store in $11
sw $11, 0x2018($0) # Store result in A[2]
lw $12, 0x2018($0) # Load A[2] into $12
addi $13, $12, 1   # Increment A[2] by 1, store in $13