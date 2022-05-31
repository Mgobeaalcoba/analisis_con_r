# EDA Scatter Plot Mtcars: No necesitamos paquetes adicionales a R para realizar scatter plot

plot(x = mtcars$mpg,y = mtcars$cyl,
     xlab = "millas por galon", ylab = "cilindros",
     main = "Relaci�n cilindros y millas por gal�n") # Funciona si defino los parametros por asignaci�n como si solo los escribo al igual que pandas. 

# xlab e ylab se usan para poner nombres a los ejes. main para poner nombre al gr�fico. 

plot(x = mtcars$mpg,y = mtcars$hp,
     xlab = "millas por galon", ylab = "caballos de fuerza",
     main = "Relaci�n caballos de fuerza y millas por gal�n")

# EDA Orangeec

plot(orangeec$Unemployment, orangeec$Education.invest...GDP,
     xlab = "Desempleo", ylab = "Peso del presupuesto para educaci�n sobre PIB",
     main = "Desempleo en funci�n del peso del presupuesto para educaci�n sobre PIB")

# Otra forma de hacer un scatter pero invirtiendo el orden de los ejes, primero declaro Y y luego X es as�: 

plot(orangeec$Education.invest...GDP ~ orangeec$Unemployment,
     xlab = "Desempleo", ylab = "Peso del presupuesto para educaci�n sobre PIB",
     main = "Desempleo en funci�n del peso del presupuesto para educaci�n sobre PIB")

plot(orangeec$GDP.PC ~ orangeec$AporteEcNja ,
     xlab = "Aporte econom�a naranja al PIB(%)", ylab = "PIB per capita",
     main = "Relaci�n Econom�a Naranja y PIB per capita")