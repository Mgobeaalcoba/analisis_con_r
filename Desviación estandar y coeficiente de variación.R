# Desviación estandar y coeficiente de variación: 

# Conceptos.

#- Desviación estándar: la desviación Estándar, en un conjunto de datos es una medida de dispersión, que nos indica
# cuánto pueden alejarse los valores respecto al promedio (media).es útil para determinar entre qué rango puede 
# moverse una determinada variable. (por lo tanto es útil para buscar probabilidades de que un evento ocurra)

# - Coeficiente de variación: este expresa la desviación estándar como porcentaje de la media, mostrando una mejor 
# interpretación porcentual del grado de variabilidad que la desviación estándar. Lo optimo es hasta 25%

# desviación estandar o sd en R

sd(mtcars$mpg) # 6.03
mtcars$mpg
mean(mtcars$mpg) # 20.09

# Coeficiente de variación: 

coef <- (sd(mtcars$mpg/mean(mtcars$mpg))*100)
coef # 29.99%

# Analicemos ahora la penetración de internet en nuestro dataframe de economía naranja: 

desv <- sd(orangeec$Internet.penetration...population)
media <- mean(orangeec$Internet.penetration...population)
coefvar <- (desv/media) * 100
desv # 17.27
media # 68.41
coefvar # 25.25

summary(orangeec)

# Hay medidas de tendencia central que si quiero ver de forma individual no voy a poder por haber NA´s. 
# para suplir esto tengo que pasar como parametro de la medida de tendencia central na.rm = TRUE

mean(orangeec$AporteEcNja) # Devuelve NA por los missing values
media <- mean(orangeec$AporteEcNja, na.rm = TRUE) # Esta es la forma en la que se calculan cuando usamos la función summary()
media

# Lo mismo va a suceder al calcular desviación estandar o sd

sd(orangeec$AporteEcNja) # Devuelve NA
desv <- sd(orangeec$AporteEcNja, na.rm = TRUE)
desv

coefvar <- (desv/media) * 100
coefvar # 61 % quiere decir que los datos están muy desviados del promedio. Conviene mas basarse en la mediana que en la media cuando esto ocurre. 
