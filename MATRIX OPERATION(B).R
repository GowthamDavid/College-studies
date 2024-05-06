print("Enter the size of A matrix")
m <- as.integer(readline(prompt = "m = "))
n <- as.integer(readline(prompt = "n = "))
asize <- m*n
avec <- vector(mode = "integer",length = 0)
for (i in 1:asize) {
  mv1 <- as.integer(readline())
  avec <- c(avec,mv1)
}
A <- matrix(data = avec,nrow = m,ncol = n,byrow = TRUE)
A

print("Enter the size of B matrix")
g <- as.integer(readline(prompt = "g = "))
j <- as.integer(readline(prompt = "j = "))
bsize <- g*j
bvec <- vector(mode = "integer",length = 0)
for(i in 1:bsize){
  mv2 <- as.integer(readline())
  bvec <- c(bvec,mv2)
}
B <- matrix(data = bvec,nrow = g,ncol = j,byrow = TRUE)
B

print("Resultant Matrices")
print("Addition of two matrix A & B")
A+B
print("Subtraction of two matrix A & B")
A-B
print("Scalar multiplication of A")
3*A
print("Multiplication of two matrix A & B")
A%*%B
print("Diagonal of A")
diag(A)
print("Transpose of B")
t(B)
print("Inverse of B")
solve(B)
