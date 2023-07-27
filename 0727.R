# 設定矩陣大小
rows <- 5
col <- 5

# 創建兩個5x5的隨機數值矩陣
matrix1 <- matrix(runif(rows * col, min = 0, max = 10), nrow = rows, ncol = col)
matrix2 <- matrix(runif(rows * col, min = 0, max = 10), nrow = rows, ncol = col)

a <- matrix(runif(6 * 7, min = 0, max = 10), nrow = 6, ncol = 7)
b <- matrix(runif(6 * 7, min = 0, max = 10), nrow = 6, ncol = 7)

# 定義my_function函數
my_function <- function(m1, m2) {
  matrix3 <- m1 + m2
  r <- dim(matrix3)[1]
  co <- dim(matrix3)[2]
  result_matrix <- matrix(0, nrow = r, ncol = co)  # 創建一個空白的矩陣
  
  for (i in 1:r) {
    for (j in 1:co) {
      if (matrix3[i, j] > 7) {
        result_matrix[i, j] <- 3
      } else if (matrix3[i, j] > 4 & matrix3[i, j] <= 7) {
        result_matrix[i, j] <- 2
      } else {
        result_matrix[i, j] <- 1
      }
    }
  }
  return(result_matrix) 
}
# 呼叫my_function函數
result <- my_function(a, b)
print(result)

a+b
