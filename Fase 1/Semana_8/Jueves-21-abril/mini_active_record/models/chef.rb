#Clase Chef que hereda de miniactiverecord
class Chef < MiniActiveRecord::Model
  #Atributos que tendra cada objeto Chef
  self.attribute_names = [:id, :first_name, :last_name, :email, :phone,:birthday, :created_at, :updated_at]
  #Permitir solo ver ciertos atributos
  attr_reader :attributes, :old_attributes

  # We say a record is "new" if it doesn't have a defined primary key in its
  # attributes
  #Clase para crear objetos Meal
  def meals
    Meal.where('chef_id = ?', self[:id])
  end
  #Clase para añadir meals a un Chef
  def add_meals(meals)
    meals.each do |meal|
      meal.chef = self
    end

    meals
  end
 
end
