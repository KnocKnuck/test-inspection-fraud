setwd("_______Your_Path____")
Vol = read.table("Volumes.csv" , sep="," , dec = ".", header = TRUE)
head(Vol) 

Vol$bouteille
Vol$volume
str(Vol) "Donne toutes les données de la base" 
 " Le $ sert à sélectionner une variable particulière d’un data-frame"
 
mean(Vol$volume)
var(Vol$volume)
"On ne peut pas prendre de décision parce que c'est un échantillon mais quand même, le nombre n'est pas exact et laisse à penser qu'il ne rempli pas toutes ces bouteilles de la même manières,
il vend des bouteilles de 74 cl"

hist(Vol$volume,freq=FALSE, ylim =c(0,0.40))
x=seq(72,78,0.01) 
"On a toutes les variables de 72 a 78 avec des saut de 0.01"
y=dnorm(x,mean=75,sd=sd(Vol$volume))
lines(x,y,col= 'red' )

et = sd(Vol$volume)
mu = 75
dnorm(x,mean=mu, sd=et)
"plot(x,y, type='l')"
lines(x,y, col ='purple')

"8. Modèle Xi ~N(mu, sigma²) avec sigma² connu indépendant"


