num <- 0:10
matrix1 <- matrix(sample(num, 5*5, replace = TRUE), nrow = 5, ncol = 5)
matrix2 <- matrix(sample(num, 5*5, replace = TRUE), nrow = 5, ncol = 5)
my_function <- function(matrix1,matrix2){
  sum_matrix <- matrix1 + matrix2
  sub_matrix <- matrix1 - matrix2
  x <- rowSums(sum_matrix)
  y <- rowSums(sub_matrix)
  print(x)
  print(y)
  plot(x,y,main ="Graph",xlab ="x-axis",ylab ="y-axis",col="black",pch=24,cex=1.5)
  labels1 <- c(1,2,3,4,5)
  text(x,y,labels = labels1 , pos = 4, cex = 1)
  lines(x,y, type = "l", col = "blue")
  }
my_function(matrix1,matrix2)
