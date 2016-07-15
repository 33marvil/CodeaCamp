#Añobiciesto
def leap_year?(year)#creacion del metodo
  #Acciones del metodo
  if year % 4 == 0 && year % 100 != 0 ||  year % 400 == 0
    #Operacion para saber si el año es biciesto
    true #Si cumple los requisitos es biciesto y regresa true
  else
    false #Si no cumple regresa false
  end#end if year
end#end leap_year?
#Pruebas
p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true