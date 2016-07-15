class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  #vistas de lo que saldra en cada accion de tarea
	def index
    puts "Tareas por hacer: "
    Task.all.each_with_index do |ele, index|
      if ele.status == "t"
        puts "#{index + 1}.[X] #{ele.name}"
      else
        puts "#{index + 1}.[ ] #{ele.name}"
      end
    end
	end

  def create(task)
    puts "The task: \"#{task}\" has been added"
  end

  def delete(task)
    puts "The task: \"#{task}\" has been deleted"
  end

  def update(task)
    puts "The task: \"#{task}\" has been completed"
  end

	def error
    puts "You didn't write nothing"
	end

end
