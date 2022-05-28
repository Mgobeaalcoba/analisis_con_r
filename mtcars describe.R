str(mtcars) # Parecido a un describe de pandas. Me indica que tipos de datos tengo en mi dataset
?mtcars # Me brinda info sobre mi dataset
class(mtcars)
class(mtcars$vs) # Mediante el signo peso luego del dataset puede preguntar de que tipo es un dato en especifico en un dataset
# VS está guardada como integer pero es una variable booleana. Por lo que vamos a transformalo a logico o booleano
mtcars$vs = as.logical(mtcars$vs)
class(mtcars$vs)
mtcars$am = as.logical(mtcars$am)
class(mtcars$am)
str(mtcars)
str(orangeec)
?orangeec

summary(orangeec) # Este si es describe de pandas
summary(mtcars)
# Ajustemos nuestra variable wt(peso) ya que está en toneladas y en libras.

wt <- (mtcars$wt*1000)/2
wt
# Aun no está impactado el cambio en el dataset

mtcars.new <- transform(mtcars, wt=wt*1000/2) # Guardo en un nuevo dataset todo igual salvo la columna wt(peso) a la que le aplico la transformación deseada
summary(mtcars.new) # Veo las medidas centrales de mi nuevo dataset
