#metodo para crear el tablero
def crear_tablero
  #nested array de 8 arryas cada uno con 8 elementos
  tab = Array.new(8){Array.new(8)}
  #Nested array con las piezas del ajedrez
  fichas = [["T"], ["C"], 
            ["A"], ["r"], 
            ["R"], ["P"]]
  #ciclo para armar las filas 
  for i in 0..7
    #contador
    count = 0
    #ciclo para armar las columnas
    for j in 0..7 
      #Comparacion de fila = 0
      if i == 0   
        #comparacion para crear fichas siempre que sea menor o = a 4
        if count <= 4  
          #y cambia por las fichas en la pocision del counter
          tab[i][j] = fichas[count][0] + "-B"
        #si es mayor a 4 ya no hay fichas
        else
          #Se saca el modulo de counter y se le suma 1 para tener la mitad
          tab[i][j] = fichas[count % 2 + 1][0] + "-B"
          #Compacion cuando la columna sea = 7
          #en esa pocision pone el [0][0]
          tab[i][j] = fichas[0][0] + "-B" if j == 7
        end
        #le aumenta el contador 
        count += 1
      #compara si la fila es = 1
      elsif i == 1
        #Si se cumple en es fila pone todas las fichas de peon blancas
        tab[i][j] = fichas[5][0] + "-B"
      #si la fila es = 6
      elsif i == 6
        #en esa fila pones todas las fichas de peon negras
        tab[i][j] = fichas[5][0] + "-N"
      #Si la fila es = 7
      elsif i == 7
        #compara que el contador sea menor o = 4
        if count <= 4  
          #si se cumple pone las fichas sucesivamente
          tab[i][j] = fichas[count][0] + "-B"   
        #si no se cumple ya no ha fichas
        else
          #pone el numero y lo divide sobre 2
          tab[i][j] = fichas[count % 2 + 1][0] + "-N"
          #si el numero es 7 pone la torre en la ultima posicion
          tab[i][j] = fichas[0][0] + "-B" if j == 7
        end
        #sumar al contador 1 cada vez que entre
        count += 1
      else
        #Todo lo que sobre en el tablero lo pondra como espacio de tablero
        tab[i][j] = "|_|"     
      end  
    end
  end
  #regresa el nested array tab ya lleno
  tab
end
#mostrara el tablero ya ordenado
def muestra_tablero(tablero)
  #ciclo para mostrar el tablero 
  for h in 0..7
    #muestra cada fila del tablero cada renglon
    p tablero[h]
  end
end
#regresa el parametro de crear_tablero y lo pone en tabla
tabla = crear_tablero
#muestra el tablero ya con el metodo de hacer el tablero lleno
muestra_tablero(tabla)





