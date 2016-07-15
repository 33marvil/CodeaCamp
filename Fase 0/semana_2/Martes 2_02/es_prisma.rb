#Creacion del metodo para saber que tipo de prisma es
def prism_type(side1, side2, side3)
  #Contenido del metodo
  #creacion if para saber si los 3 lados son iguales
  if side1 == side2 && side2 == side3 && side3 == side1
    "cubo"
  #Revisa que 2 lados sean iguales y uno sea diferente
  elsif side1 == side2 && side1 != side3 && side2 != side3
    "prisma rectangular"
  #Revisa que los 3 lados sean diferentes
  elsif side1 != side2 && side1 != side3 && side2 != side3
    "cuboide"
  else #Si las medidas no coinciden regresan un error
    "Ese prisma no existe"
  end #end if 
end#End prism_type

# Pruebas

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"

