# Matrices: Objeto tipo tabla que contiene un solo tipo de datos. Se organizan en filas y columnas
# Si tiene mas de un tipo de datos entonces se trata de un dataframe. 

tiempo_matrix <- matrix(c(tiempo_platzi,tiempo_lecturas),nrow = 2, byrow = TRUE) # El byrow hace que cada fila de mi matriz sea uno de los vectores
# Si pusiera byrow = FALSE entonces me guardaría los numeros de cada vector intercalados entre las filas
tiempo_matrix

dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes") # Armo un vector de etiquetas que voy a usar para las columnas
tiempo <- c("Tiempo Platzi", "Tiempo lecturas") # Armo un vector de etiquetas que voy a usar para las filas

colnames(tiempo_matrix) <- dias # Cargo los dias como nombre de las columnas de tiempo_matrix
rownames(tiempo_matrix) <- tiempo # Cargo los titulos de las filas de tiempo_matrix

tiempo_matrix

# ¿Cuanto tiempo en total dedicamos entonces por día a Platzi?
# Para ello debemos sumar los contenidos de todas nuestras columnas

colSums(tiempo_matrix)

# Quiero ahora agregarle una nuevo fila a mi matriz:

final_matrix <- rbind(tiempo_matrix, podcast = c(10,15,30,5,0)) # rbind se usa para agregar una nueva fila a mi matriz. En este caso guardandola en una segunda matriz
final_matrix

colSums(final_matrix)

# Podemos hacer slicing como con python. Solo que los indices en R arrancan de 1 y no de 0 como lo hacen en python

final_matrix[1,5] #Pido el valor de la primera fila, quinta columna

# Desafio: agregar una columna para los sabados

final_matrix <- cbind(final_matrix, Sabado = c(10,15,30)) # cbind se usa para agregar columnas a una matriz
final_matrix

