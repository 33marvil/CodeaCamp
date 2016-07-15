#Metodo para encontrar un numero con el algoritmo binario
#No importa si el array esta desordenado
def binary_search(from=0, to=nil)
  #Creacion del rango
  array = (1..100).to_a
  puts "Piensa en un número entre el 1 y el 100"
  #Obtener el numero del usuario
  num = gets.chomp.to_i
  #saber hasta que numero contar
  if to == nil
    to = array.count-1
  end
  #sacar la mitad del array
  mid = (from + to) / 2
  #hacer un arreglo desde el primero hasta la mitad
  first = (array[0]..mid+1).to_a
  #hacer un arreglo desde la mitad hasta el ultimo
  second = (mid+2..array[-1]).to_a
  #si el numero se encuentra en la primera mitad
  if first.include? num
    #Solo tomara la longitud de ese array
    to = first.count-1
    #Sacara la mitad de ese array
    mid = (from + to) / 2
    #vuelve a separar esa mitad en otras 2 mitades en forma de arreglo
    #1..25
    first = (first[0]..mid).to_a
    #26..50
    second = (mid+1..second[-1]).to_a
    #si la nueva primera mitad contiene el numero
    if first.include? num
      #recorre dentro del numero 
      for index in 0..array.length-1
        #si el numero recorrido es igual a el numero
        if array[index] == num
          #regresa la posicion en la que este el numero
          puts "El número esta en la posicion: #{index}"
        end
      end
    #de lo contrario lo buscara en la segunda mitad
    else 
      #recorrera dentro del segundo array  
      for index in 0..array.length-1
        #si el numero es igual a el indice
        if array[index] == num
          #imprime la posicion del numero
          puts "El número esta en la posicion: #{index}"
        end
      end
    end
  #si el numero no se encontraba en la primera mitad 1..50
  #entra este y lo busca en la mitad de 51..100
  else
    #creo el nuevo array desde el 51 hasta el 75
    first = (second[0]..second[(second.length) / 2]-1).to_a
    #crea el nuevo array desde el 76 hasta el 100
    second = (second[(second.length) / 2]..second[-1]).to_a
    #si el primer array incluye el numero
    if first.include? num
      #recorre dentro del array
      for index in 0..array.length-1
        #si el numero es igual a el index
        if array[index] == num
          #regresa la posicion del numero dentro del array
          puts "El número esta en la posicion: #{index}"
        end
      end
    #si el numero no estaba en la primera mitad 51..75
    #lo buscara en la mitad 76..100
    else
      #recorre dentro de cada numero
      for index in 0..array.length-1
        #si el numero es igual a el indice del numero
        if array[index] == num
          #imprime la posicion del numero
          puts "El número esta en la posicion: #{index}"
        end
      end
    end
  end
  #Nota: puedes cambiar la longitud del array pero los numero puestos seran cambiados
end


binary_search