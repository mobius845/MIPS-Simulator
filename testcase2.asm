addi $8, $0, 10          # $8 ($t0) = 10
addi $9, $0, 20          # $9 ($t1) = 20

addi $10, $8, 5    # $10 ($t2) = $8 + 5, $10 = 15
addi $11, $9, -10  # $11 ($t3) = $9 - 10, $11 = 10

slt $12, $10, $11  # $12 ($t4) = ($10 < $11), $12 = 0 (since 15 is not less than 10)
slt $13, $11, $10  # $13 ($t5) = ($11 < $10), $13 = 1 (since 10 is less than 15)

addi $14, $12, 2   # $14 ($t6) = $12 + 2, $14 = 2
addi $15, $13, 3   # $15 ($t7) = $13 + 3, $15 = 4

beq $14, $15, exit # if $14 == $15, go to exit (they are not equal, so it will not branch)

exit:
addi $15, $14, 1   # $15 = $14 + 1, $15 = 3 (this line will be executed regardless)