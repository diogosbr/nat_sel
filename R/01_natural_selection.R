#--------------------------------------#
# Script to simulate natural selection #
#--------------------------------------#

# Number of sides
n <- 6

# Dices
dado <- rep(1,n)

# Object to save the results
result <- dado

# Running the evlution
while (min(dado) != n) {
  if(min(dado) != n) {
    dado[dado == min(dado)][1] = sample(n,1)
    result <- rbind(result, dado)
  }
}
result <- as.data.frame(result)
rownames(result) <- 1:nrow(result)

# View the results
result

# Number of steps
nrow(result)
