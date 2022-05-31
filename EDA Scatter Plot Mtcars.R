# EDA Scatter Plot Mtcars: No necesitamos paquetes adicionales a R para realizar scatter plot

plot(x = mtcars$mpg,y = mtcars$cyl,
     xlab = "millas por galon", ylab = "cilindros",
     main = "Relación cilindros y millas por galón") # Funciona si defino los parametros por asignación como si solo los escribo al igual que pandas. 

# xlab e ylab se usan para poner nombres a los ejes. main para poner nombre al gráfico. 

plot(x = mtcars$mpg,y = mtcars$hp,
     xlab = "millas por galon", ylab = "caballos de fuerza",
     main = "Relación caballos de fuerza y millas por galón")

# EDA Orangeec

plot(orangeec$Unemployment, orangeec$Education.invest...GDP,
     xlab = "Desempleo", ylab = "Peso del presupuesto para educación sobre PIB",
     main = "Desempleo en función del peso del presupuesto para educación sobre PIB")

# Otra forma de hacer un scatter pero invirtiendo el orden de los ejes, primero declaro Y y luego X es así: 

plot(orangeec$Education.invest...GDP ~ orangeec$Unemployment,
     xlab = "Desempleo", ylab = "Peso del presupuesto para educación sobre PIB",
     main = "Desempleo en función del peso del presupuesto para educación sobre PIB")

plot(orangeec$GDP.PC ~ orangeec$AporteEcNja ,
     xlab = "Aporte economía naranja al PIB(%)", ylab = "PIB per capita",
     main = "Relación Economía Naranja y PIB per capita")
