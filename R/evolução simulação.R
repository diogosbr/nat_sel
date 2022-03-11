#################
#Com 6 dados de 6 lados

dado=sample(6,6)
dado

result=as.data.frame(matrix(nrow=1000,ncol=6))
  
for (i in 1:1000) 
{
  if(min(dado)!=6)
  {
  dado[dado==min(dado)][1]  =sample(6,1)
  result[i,]=    dado
  }
  else
  {c(0,0,0,0,0,0)}
}

#Número de "Passos evolutivos"
dim(na.omit(result))[1]

result

tail(result)
head(result)

###################
#Com 6 dados de 20 lados

dado=sample(20,6)
dado

result=as.data.frame(matrix(nrow=1000,ncol=6))

for (i in 1:1000) 
{
  if(min(dado)!=20)
  {
    dado[dado==min(dado)][1]  =sample(20,1)
    result[i,]=    dado
  }
  else
  {c(0,0,0,0,0,0)
  }
}

#Número de "Passos evolutivos"
dim(na.omit(result))[1]

result
################

###################
#Com 6 dados de 20 lados sem seleção

dado=sample(20,6)
dado

result=as.data.frame(matrix(nrow=000000,ncol=6))

for (i in 1:10000) 
{
  if(min(dado)!=20)
  {
    dado=sample(20,6)
    result[i,]=    dado
  }
  else
  {c(0,0,0,0,0,0)
  }
}

result
#Número de "Passos evolutivos"
dim(na.omit(result))[1]

###############



##trash

setwd("C:\\Users\\Diogo\\Google Drive\\evolução")
source("dado.r")
dado
