#Unir arreglos
def join_arrays(para1, para2)#Creacion del metodo
   para1 + para2 #Acciones que ejecuta el metodo
end#Fin del metodo
# Pruebas
p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6] #Regresa valor booleano
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']


p join_arrays([1, 2, 3], [4, 5, 6]) #Regresa el resultado con estos valores