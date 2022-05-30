# Factores, listas y vistazos a nuestros datasets
#Factor: Lista con etiquetas
Nivel_Curso <- c("Basico","Intermedio","Avanzado")
Nivel_Curso

# Funciones de vistazos - Simil Pandas

head(mtcars, n = 4) # Por default muestra 6, si quiero otra cantidad la paso bajo parametro n =
tail(orangeec, n = 3) 

str(mtcars) # Ver la estructura del dataset... Pero hay otra forma:

install.packages("dplyr")
library("dplyr") # Necesito tener esta librería instalada y en sesión

glimpse(orangeec) # Es casi lo mismo. 

# Listas: Super objeto que nos permite almacenar cualquier otro objeto: vectores, matrices, dataframes, etc

my_vector <- 1:8 # Guardo un vector con los numeros del 1 al 8
my_vector
my_matrix <- matrix(1:9, ncol = 3)
my_matrix
my_df <- mtcars[1:4,] # Guardo en un nuevo dataframe un slicing de mtcars que tenga de la fila 1 a la 4 y todas las columnas
my_df

my_list <- list(my_vector, my_matrix, my_df)
my_list # Funciona como un super contenedor que puede almacenar objetos de formas distintas. 

my_list[3] # Puedo hacer slicing con mi lista
