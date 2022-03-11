sel_nat <- function(n_sides = 6, n_genes = 6, random = FALSE){

  # Dices
  dado <- rep(1,n_genes)

  # Object to save the results
  result <- dado

  # Running the evlution
  while (min(dado) != n_sides) {
    if(random){
      dado <- sample(n_sides, n_genes, replace = TRUE)
      } else {
        dado[dado == min(dado)][1] = sample(n_sides,1)
      }
    result <- rbind(result, dado)
  }
  result <- as.data.frame(result)
  rownames(result) <- 1:nrow(result)

  return(result)
}
