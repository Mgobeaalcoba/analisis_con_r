# Vectores: Conjunto de datos de un solo tipo. En R se guardan en "Contenedores C"

#Vector numerico
tiempo_platzi <- c(25,5,10,15,10)
tiempo_lecturas <- c(30,10,5,10,15)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas
tiempo_aprendizaje

#Vector con caracteres
dias_aprendizaje <- c("Lunes","Martes","Miercoles","Jueves","Viernes")

#Vector booleano
dias_mas_20min <- c(TRUE,FALSE,FALSE,TRUE,TRUE)
dias_mas_20min

total_tiempo_platzi <- sum(tiempo_platzi) # Creo una variable sumando todos los elementos del vector tiempo platzi
total_tiempo_platzi
total_tiempo_lecturas <- sum(tiempo_lecturas)
total_tiempo_lecturas
total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lecturas
total_tiempo_adicional
