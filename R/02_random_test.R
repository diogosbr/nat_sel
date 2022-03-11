# Reading the nat_sel() function
source('R/01_natural_selection_function.R')

# Parameters
n_sides <- 4
n_genes <- 5
n_tries <- 1000

# Running with selection
res_sel <- c()
for (i in 1:n_tries) {
  org_sel <- sel_nat(n_sides = n_sides, n_genes = n_genes, random = FALSE)
  res_sel <- c(res_sel, nrow(org_sel))
}

# Running without selection
res_random <- c()
for (i in 1:n_tries) {
  org_sel <- sel_nat(n_sides = n_sides, n_genes = n_genes, random = TRUE)
  res_random <- c(res_random, nrow(org_sel))
}

# Plot histogram to compare
par(mfrow = c(2,1))
hist(res_sel, main = "With selection", xlab = "Nº Steps")
hist(res_random, main = "Random", xlab = "Nº Steps")

# Plot densities
plot(density(res_sel))
plot(density(res_random))

# Plot densities together
sm.density.compare(c(res_sel, res_random),
                   c(rep('sel', length(res_sel)),
                     rep('random', length(res_random))),
                   xlab = "Nº Steps")
title(main="Nº steps to achieve evolution")
