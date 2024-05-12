addi $7, $0, -1     # $7 init to x
addi $8, $0, -5     # $8 init to y
sw $7, 0x2010($0)  # A[0] = x
sw $8, 0x2014($0)  # A[1] = y
lw $11, 0x2010($0) # Load A[0] into $11
lw $12, 0x2014($0) # Load A[1] into $12
calc $13, $11      # Calculate EF count of A[0] and store in $13
sw $13, 0x2018($0) # Store EF count of A[0] in memory
calc $14, $12      # Calculate EF count of A[1] and store in $14
sw $14, 0x201C($0) # Store EF count of A[1] in memory