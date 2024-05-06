A <- matrix(data = c(1,2,3,4),nrow = 2, ncol = 2, byrow = TRUE)
B <- matrix(data = c(5,6,7,8),nrow = 2,ncol = 2,byrow = FALSE)
C <- rbind(c(1,2,3),c(4,5,6))
D <- cbind(c(2,3,4),c(6,7,1))
print("Matrix of A")
A
print("Matrix of B")
B
print("Matric of C")
C
print("Matrix of D")
D
print("Resultant Matrices")
print("Addition of two matrix A & B")
A+B
print("Substraction of two matrix A & B")
A-B
print("Scalar Multiplication of A")
3*A
print("Multiplication of two matrix C & D")
C%*%D
print("Diagonal of A")
diag(A)
print("Transpose of A")
t(A)
print("Inverse of B")
solve(B)
