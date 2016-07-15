get '/' do
  #Array vacio 
  @rolls = []
  #Meter 3 veces a el array un objeto roll que lo cree en la base de datos
  3.times { @rolls << Roll.create }
  #Mandar mensaje de ganador si los 3 valores de cada roll que salieron son iguales
  @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1

  erb :index
end

# QUE HACER?: Convierte esta ruta para que utilice Ajax y si la petición no es
# de Ajax de igual forma sirva.
post '/rolls' do
  #array vacio para meter objetos Roll
  @rolls = []
  #Si los parametros existen
  if params[:value]
    #Crea 3 nuevos obejtos rol con su valor
    3.times { @rolls << Roll.create({ value: value }) }
  #Si no existe crea los objetos pero sin value
  else
    3.times { @rolls << Roll.create }
  end
  #Crea mensaje si los valores de las imagenes son iguales
  @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
  #Condicion para saber si existe la respuesta del ajax
  if request.xhr?
    # respond to Ajax request
    #Si existe recarga solo la página del _die_roll, si recargar el layout(pagina principal)
    erb :_die_roll, layout: false
  else
    # respond to normal request
    #Si no existe el ajax que solamente renderee toda la página
    erb :index
  end
    # TIP: Qué esté haciendo esto y qué debe hacer diferente.
end
#Ver en que parte poner el ajax y trabajarlo sobre elsif #
#div con id slot-machine
  