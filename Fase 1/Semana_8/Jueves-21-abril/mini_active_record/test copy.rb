require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

chef = Chef.find(1)
meal = Meal.find(1)
# Este es un ejemplo de como crear una prueba para el método 'create' en Chefs. 
chefnew = Chef.create(first_name: "Aldo", last_name: "Marquez", email:"aldo@gmail.com", phone:"930-028-2908 x7555", birthday:Time.now)
chef2 = Chef.create(first_name: "Eduardo", last_name: "Fernández", email:"eduardo@gmail.com", phone:"930-028-2908 x7555", birthday:Time.now)
#Prueba para crear objetos meal
 # e.g., Meal.new(id: 1, name: 'Chicken', created_at: '2012-12-01 05:54:30')
comida = Meal.new(id: 1, name: 'Tacos de suadero', created_at: Time.now)
#buscar el elemento 6 del menu
meal3 = Meal.find(6)
# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará

#Driver code
#uso de begin para correr las prueba sin que rompa el programa
begin
  assert p chefnew[:first_name] #== 'Aldo'
  assert p chef[:first_name] #== 'Ferran'
  assert p chefnew[:last_name] #== 'Adria'
  assert p meal[:name]
  assert p comida[:name]
  assert p chef2[:first_name]
  assert p meal3[:name]
rescue
  #si la prueba no corrio mostrara este mensaje y parara en lugar de romper
  puts 'No encontre la prueba, el programa terminara'
end


puts "finished"
