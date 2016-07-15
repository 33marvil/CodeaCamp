require_relative 'model'
require_relative 'view'

class Controller

  def initialize
    @store = Store.new
    @view = View.new
    #@view.welcome_store
    login
  end

  def login
    election = @view.welcome_store
    p election
    # if election == "1"
    #   @view.welcome_admin
    # end
    
  end

end

Controller.new