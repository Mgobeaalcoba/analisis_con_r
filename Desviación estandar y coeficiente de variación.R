# Desviaci�n estandar y coeficiente de variaci�n: 

# Conceptos.

#- Desviaci�n est�ndar: la desviaci�n Est�ndar, en un conjunto de datos es una medida de dispersi�n, que nos indica
# cu�nto pueden alejarse los valores respecto al promedio (media).es �til para determinar entre qu� rango puede 
# moverse una determinada variable. (por lo tanto es �til para buscar probabilidades de que un evento ocurra)

# - Coeficiente de variaci�n: este expresa la desviaci�n est�ndar como porcentaje de la media, mostrando una mejor 
# interpretaci�n porcentual del grado de variabilidad que la desviaci�n est�ndar. Lo optimo es hasta 25%

# desviaci�n estandar o sd en R

sd(mtcars$mpg) # 6.03
mtcars$mpg
mean(mtcars$mpg) # 20.09

# Coeficiente de variaci�n: 

coef <- (sd(mtcars$mpg/mean(mtcars$mpg))*100)
coef # 29.99%

# Analicemos ahora la penetraci�n de internet en nuestro dataframe de econom�a naranja: 

desv <- sd(orangeec$Internet.penetration...population)
media <- mean(orangeec$Internet.penetration...population)
coefvar <- (desv/media) * 100
desv # 17.27
media # 68.41
coefvar # 25.25

summary(orangeec)

# Hay medidas de tendencia central que si quiero ver de forma individual no voy a poder por haber NA�s. 
# para suplir esto tengo que pasar como parametro de la medida de tendencia central na.rm = TRUE

mean(orangeec$AporteEcNja) # Devuelve NA por los missing values
media <- mean(orangeec$AporteEcNja, na.rm = TRUE) # Esta es la forma en la que se calculan cuando usamos la funci�n summary()
media

# Lo mismo va a suceder al calcular desviaci�n estandar o sd

sd(orangeec$AporteEcNja) # Devuelve NA
desv <- sd(orangeec$AporteEcNja, na.rm = TRUE)
desv

coefvar <- (desv/media) * 100
coefvar # 61 % quiere decir que los datos est�n muy desviados del promedio. Conviene mas basarse en la mediana que en la media cuando esto ocurre. 
