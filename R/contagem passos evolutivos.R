
result2=as.data.frame(matrix(nrow=100,ncol=1))

for (b in 1:100)
{
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
  {c(0,0,0,0,0,0)}
}

#Número de "Passos evolutivos"
passos=dim(na.omit(result))[1]

result2[b,1]=passos
}

result2
hist(result2[,1])
