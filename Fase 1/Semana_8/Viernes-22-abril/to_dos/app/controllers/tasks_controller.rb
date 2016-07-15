class TasksController

  def initialize(args)
    @view = Corre.new
    changes(args)
  end

  def changes(opcion)
    #variable que sera todo lo que el usuario quiera agregar, o el numero a borrar
    #con el join une todo eso y le da un espacio
    task_to_add = opcion[1..-1].join(' ')
    #toma el primer elemento del aray opcion
    case opcion[0]
      #si es add llama al metodo add con el parametro que se agregara
      when "add" then add
      #Si es delete llama a el metodo delete le da de parametro el task como un numero entero
      when "delete" then delete
      #Si es complete llama a el metodo complete le da de parametro el task como un numero entero
      when "complete" then complete
        #si es index llama al index para mostrar las tareas
      when "index" then index
    end
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    puts "run"
    @view.index
    p tasks.all
    tasks.all.each do |foo|
      puts foo
    end
  end

  def add

  end

  def delete

  end

  def complete
  
  end

end

TasksController.new(ARGV)
