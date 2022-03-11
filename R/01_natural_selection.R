#--------------------------------------#
# Script to simulate natural selection #
#--------------------------------------#

# 6-sided die
dado <- sample(6,6)

# Object to save the results
result <- c()

# Running the evlution
while (min(dado) != 6) {
  if(min(dado) != 6) {
    dado[dado == min(dado)][1] = sample(6,1)
    result <- rbind(result, dado)
  }
}
result <- as.data.frame(result)

# View the results
result

# Number of steps
nrow(result)
