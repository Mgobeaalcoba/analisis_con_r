# Correlaciones: pairs. Los numeros de columnas, que se pueden observar posicionandose en ellas en el dataframe, son claves para ello

pairs(mtcars[,2:6]) #Del dataframe quiero correlacionar todas las filas pero solo de la columna 2 a la 6
pairs(mtcars) # No me lo corre porque tenemos columnas no numericas 

# Quiero hacer un pairs pero solo de algunas variables. Para ello voy a armar un subset con las que me interesan

# Necesito contar con dplyr para esto. 

newdata <- subset(mtcars, select=c(2,7:8,11,12)) # Recorto con el select y un contenedor c los numeros de columnas que luego quiero cruzar en mi pairs
pairs(newdata)

# Otra forma de hacer este recorte es mediante un contenedor C en el pairs mismo: 

pairs(mtcars[, -c(1,3,4,5,6,9,10)]) # Es por la negativa lo mismo que recortamos en newdata

pairs(mtcars[, c(2,7:8,11,12)]) # Lo mismo por la positiva pero sin hacer un subset. Solo un slicing multiple

# Hasta acá entonces filtramos subset por columnas con select. 
# Ahora vamos a filtrar subsets por filas con filter.

eficientes <- filter(mtcars, mpg >= 30) # Filtro  solo aquellos autos cuyo mpg sea igual o mayor a 30
eficientes

pairs(eficientes[,2:6])

install.packages("stringr")
library("stringr")

merc <- mtcars %>%
  filter(str_detect(model,"Merc"))
merc

pairs(merc[,2:6])

pairs(newdata)

# La correlación se mueve, generalmente entre -1 y 1, 0 es no correlation y 1 es absoluta correlación (-1 es absoluta correlación negativa). 
# Se puede visualizar con la función de R cor()

cor(merc[,2:6])

# Cilindros y caballos por ej tienen una corr de 0,97 es decir muy positiva

cor(newdata)

# mpg con wt tienen una correlación negativa alta del -0,87

# Verifiquemos correlacioens en economía naranja

cor(orangeec[, c(2: 11)])

pairs(orangeec[, c(2: 11)])

# Acá una fuerte correlación: 

cor(orangeec[, c(2, 11)])

pairs(orangeec[, c(2, 11)])

# Graficamos esa correlación con un scatterplot particular

ggplot(orangeec, aes(x= GDP.PC, y= Median.age, color="blue", label=Country))+
  geom_point() +geom_text(aes(label=Country),hjust=0, vjust=0)+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

cor(orangeec[, c(2: 6)]) # Reviso las correlaciones y me encuentro con missing values. ¿Como lo solucionamos? 

cor(orangeec[, c(2: 6)], use="complete.obs") # Le paso como parametro que solo considere las filas que tienen completas las observaciones para obviar los MV

# Una correlación que no supera el 0.5 en general es descartada por no presentar una fuerte relación. 

cor(orangeec[, c(5: 10)], use="complete.obs")

