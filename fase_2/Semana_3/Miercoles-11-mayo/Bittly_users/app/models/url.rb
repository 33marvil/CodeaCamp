class Url < ActiveRecord::Base
  belongs_to :user
  #El before create se debe llamar diferente a el atributo 
  #de los objetos que se crearan
  before_create :short_urls
  #Cada objeto atributo short url debera pasar por este metodo 
  def short_urls
    #variable para guardar el urn nuevo
    url_new = ""
    #obtener letras al azar para que se llenen las url's nuevas
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    #Sacar 5 letras aleatorias y guardarlas
    string = (0...5).map { o[rand(o.length)] }.join
    #dependiendo de que letra tenga regresara un link nuevo
    case self.long_url[12]
    when "g"
      url_new << "goo.ble#{string}" 
    when "y"
      url_new << "yho.yi#{string}"
    else
      url_new << "byt.ly#{string}"
    end
    #Al final guarda el url en el atributo del objeto creado
    self.short_url = url_new
  end
  #Validacion para saber si la url es correcta o no
  def self.validation_url(url)
    url.downcase!
    #si incluye http o https regresa true
    if url.include? "http://" || "https://"
        true
    #de lo contrario regresa false
    else
      false
    end
  end

end



#Url.create(long_url: long_url, short_url: short_url)