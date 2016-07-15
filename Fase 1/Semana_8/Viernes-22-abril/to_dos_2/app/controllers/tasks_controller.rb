class TasksController
  def initialize(args)
    @view = TasksView.new
    changes(args)
  end

  def changes(opcion)
    #variable que sera todo lo que el usuario quiera agregar, o el numero a borrar
    #con el join une todo eso y le da un espacio
    task_to_add = opcion[1..-1].join(' ')
    #toma el primer elemento del aray opcion
    case opcion[0]
      #si es add llama al metodo add con el parametro que se agregara
      when "add" then add(task_to_add)
      #Si es delete llama a el metodo delete le da de parametro el task como un numero entero
      when "delete" then delete(task_to_add.to_i)
      #Si es complete llama a el metodo complete le da de parametro el task como un numero entero
      when "complete" then complete(task_to_add.to_i)
        #si es index llama al index para mostrar las tareas
      when "index" then index
      else 
        @view.error
    end
  end
  #Muestra las tareas
  def index
    @view.index
  end
  #hacer metodo para agregar tarea
  def add(task)
    #Crea la nueva tarea con lo que el usuario escriba
    taskToAdd = Task.create(name: task)
    #Muestra mensaje de que la tarea ha sido agregada
    @view.create(task)
  end
  #metodo para borrar tareas por id
  def delete(taskId)
    #recorre en cada tarea y su indice
    Task.all.each_with_index do |task, index|
      #si encuentra el indice igual al que el usuario dio 
      if index == taskId -1
        #destruye la tarea
        task.destroy
      end
    end
    #Muestra mensaje de borrado
    @view.delete(taskId)
  end
  #metodo para hacer que las tareas esten completadas y en el index salgan completadas
  def complete(taskId)
    #recorre dentro de cada tarea e indice 
    Task.all.each_with_index do |task, index|
      #si encuentra coincidencia en indices
      if index == taskId - 1
        #actualiza el status de la tarea 
        task.update(status: true)
      end
    end
    #mensaje de tarea completada
    @view.update(taskId)
  end
end
