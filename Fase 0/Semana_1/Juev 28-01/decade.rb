def decade(year) #Creacion del metodo año
  #revisar en que rango esta el año
  if 1910 <= year && year < 1920 #method actions
    "Tens"
  elsif 1920 <= year && year < 1930
    "Twenties"
  elsif 1930 <= year && year < 1940
    "Thirties"
  elsif 1940 <= year && year < 1950
    "Forties"
  elsif 1950 <= year && year < 1960
    "fifties"
  elsif 1960 <= year && year < 1970
    "Sixties"
  elsif 1970 <= year && year < 1980
    "Seventies"
  elsif 1980 <= year && year < 1990
    "Eighties"
  elsif 1990 <= year && year < 2000
    "Nineties"
  else 
    "Year 2000"
   end #end If
end #end year
 
 # Pruebas
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"
