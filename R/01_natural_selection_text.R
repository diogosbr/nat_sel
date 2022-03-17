#verso <- "Guarda estes versos que escrevi chorando."
library(stringr)

sel_nat <- function(verso = "Guarda estes versos que escrevi chorando, Como um alívio a minha saudade, Como um dever do meu amor; e quando Houver em ti um eco de saudade, Beija estes versos que escrevi chorando.", random = FALSE){

  #dado <- sample(unlist(str_split(verso, pattern = "")), str_count(verso))
  characters <- c(letters, LETTERS, 0:9, " ", ".", ",", ";",
                  "á", "é", "í", "ó", "ú",
                  "à","è","è","ò","ù")
  result <- sample(characters, str_count(verso), replace = T)

  verso_dec <- unlist(str_split(verso, pattern = ""))


  ver_ptr <- T
  i <- 0
  while (sum(ver_ptr) < length(verso_dec)) {
    i <- i + 1
    if (random) {cat("\r", i)} else {cat("\r", sum(ver_ptr))}
    ver_ptr <- result == verso_dec

    if(random){
      result <-  sample(characters, str_count(verso), replace = T)
    } else {
      result[!ver_ptr] <-  sample(characters, length(result[!ver_ptr]),
                                  replace = T)
      }
  }
  #print(paste0(result, collapse = ""))

  # # Running the evlution
  # while (min(dado) != n_sides) {
  #   if(random){
  #     dado <- sample(n_sides, n_genes, replace = TRUE)
  #   } else {
  #     dado[dado == min(dado)][1] = sample(n_sides,1)
  #   }
  #   result <- rbind(result, dado)
  # }
  # result <- as.data.frame(result)
  # rownames(result) <- 1:nrow(result)

  return(c(paste0(result, collapse = ""), i))
}
