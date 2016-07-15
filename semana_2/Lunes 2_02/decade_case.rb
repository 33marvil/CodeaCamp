def decade(year) #Creacion del metodo año
  #revisar en que rango esta el año
  #case year[2]
  decade = year.to_s[2]
  case decade
    when "1" #method actions
      "Tennies"
    when 2
      "Twenties"
    when 3
      "Thirties"
    when 4
      "Forties"
    when 5
      "fifties"
    when 6
      "Sixties"
    when 7
      "Seventies"
    when 8
      "Eighties"
    when 9
      "Nineties"
    else 
      "Error"
     end #end If
end

 # Pruebas
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"