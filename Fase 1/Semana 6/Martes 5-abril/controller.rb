require_relative 'model'
require_relative 'view'

class Controller

  def initialize(argv)
  @model = Model.new
  @view = View.new
  login(argv)
  end

  def login(opcion)
    election = opcion[0]
    p election
    
  end

end

Controller.new(ARGV)