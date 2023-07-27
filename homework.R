# 設定矩陣大小
rows <- 5
col <- 5

# 創建兩個5x5的隨機數值矩陣
matrix1 <- matrix(runif(rows * col, min = 0, max = 10), nrow = rows, ncol = col)
matrix2 <- matrix(runif(rows * col, min = 0, max = 10), nrow = rows, ncol = col)

# 定義my_function函數
my_function <- function(matrix1, matrix2) {
  matrix3 <- matrix1 + matrix2
  result_matrix <- matrix(0, nrow = rows, ncol = col)  # 創建一個空白的矩陣
  
  for (i in 1:rows) {
    for (j in 1:col) {
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
result <- my_function(matrix1, matrix2)
print(result)
