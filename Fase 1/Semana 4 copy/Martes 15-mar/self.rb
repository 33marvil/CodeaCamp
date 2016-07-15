#self sirve para 
puts "self es igual a: #{self}"
puts "hola"
puts "------------"
class DummyClass
  def intance_method
    puts "Esto esta corriendo cuando se define la clase"
    puts "En este contexto self es igual a: #{self}"
  end
  def self.class_method
    puts "Dentro de un método de clase"
    puts "En este contexto self es igual a: #{self}"
  end
end
hola = DummyClass.new()
hola.intance_method
puts "----------------"
class DummyClass1

  def self.class_method
    puts "Dentro de un método de clase"
    puts "En este contexto self es igual a: #{self}"
  end

end

dummy_class = DummyClass1.new()
puts DummyClass1.class_method 