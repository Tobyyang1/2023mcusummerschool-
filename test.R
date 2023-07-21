#使用matrix()創造一個5*5矩陣，runif()可以隨機生成數字，設定(生成個數，最小值，最大值)
matrix1 <- matrix(runif(5*5, min = 0,max = 10),nrow = 5,ncol = 5)
matrix2 <- matrix(runif(5*5, min = 0,max = 10),nrow = 5,ncol = 5)
#定義function，先相加兩個matrix，使用ifelse(條件，回傳的值)
#有三個條件，因此用三個ifelse()，回傳三個值
my_function <- function(matrix1, matrix2) {
  matrix3 <- matrix1 + matrix2
  result <- ifelse(matrix3 > 7, 3,
                   ifelse(matrix3 > 4 & matrix3 <= 7, 2,
                          ifelse(matrix3 <= 4 ,1,matrix3)))
  #最後一個值，需要有兩個，1是TRUE的結果回傳的，matrix3是FALSE的結果回傳的
  return(result)
}
#呼叫函式
result1 <- my_function(matrix1, matrix2)
print(result1)

