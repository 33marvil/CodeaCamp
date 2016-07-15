#Clase meal que hereda de miniactivereacord
class Meal < MiniActiveRecord::Model
  #Atributos que tendra cada Objeto Meal que se cree
  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]
  #Dejar solo acceder a algunos atributos
  attr_reader :attributes, :old_attributes
  #Clase para saber de que Chef es la meal
  def chef
    Chef.where('id = ?', self[:chef_id])
  end
  #Clase para saber que Chef tiene un id
  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save

    chef
  end

end
