table = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
        ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
        ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
        ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
        ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
        ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]]

        
# p table[0][4]  == "Calificaciones"
# p table[2][1]  == 12
# p table[2][2]  == "Femenino"
# p table[3][3]  == "Primero"
# p table[3][4]  == [8, 7, 7, 9, 8]
# p table[4][4][2]  == 6
array = [{"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]}, 
         {"Nombre"=>"Fernanda Gonzalez", "Edad"=>12, "Genero"=>"Femenino", "Grupo"=>"Tercero", "Calificaciones"=>[6, 9, 8, 6, 8]},  
         {"Nombre"=>"Luis Perez", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[8, 7, 7, 9, 8]},
         {"Nombre"=>"Ana Espinosa", "Edad"=>14, "Genero"=>"Femenino", "Grupo"=>"Segundo", "Calificaciones"=>[9, 9, 6, 8, 8]},
         {"Nombre"=>"Pablo Moran", "Edad"=>11, "Genero"=>"Masculino", "Grupo"=>"Segundo", "Calificaciones"=>[7, 8, 9, 9, 8]}]
p array[0].keys[-1] == "Calificaciones"
p array[3].values[0] == "Ana Espinosa"
p array[1].values[3] == "Tercero"
p array[2].values[1] == 13
#Proceso para cambiar el valor del key "Edad"
p array[3]["Edad"] = 20
p array[3]#.values[2]
#Los keys no se pueden modificar 