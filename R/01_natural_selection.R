#--------------------------------------#
# Script to simulate natural selection #
#--------------------------------------#

# 6-sided die

dado <- sample(6,6)
dado

result <- as.data.frame(matrix(nrow = 100,
                               ncol = 6))

for (i in 1:1000) {
  if(min(dado) != 6)
  {
    dado[dado == min(dado)][1] = sample(6,1)
    result[i,]=    dado
  }
  else
  {c(0,0,0,0,0,0)}
}
na.omit(result)
