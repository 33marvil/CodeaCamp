#Browser pirata
#requerir la gema(libreria) net/http
require 'net/http'
#requerir la gema(libreria) nokogiri para
require 'nokogiri'
#Creation of class page
class Browser
  def initialize(url)
    #sacar el url de array que regresa el ARGV
    link = url[0]
    #Parsear ese link a un objeto de http_request
    @uri = URI(link)
    #Obtiene el formato de la pàgina 
    page = Net::HTTP.get(@uri)
    #Parsear la pagina a objetos de la gema nokogiri
    @doc = Nokogiri::HTML(page)
  end
  #Metodo que correra para que se muestre el programa
  def run!
    fetch!
    #Dar tiempo para que prodzca efecto de delay
    sleep 1.8
    title
    show_content
  end
  #metodo para poner que esta buscando
  def fetch!
    puts "Fetching..."
  end
  #Metodo para obtener los links 
  def links
    #Saca los valinks de la pagina
    @links = @doc.css("nav a")
    #saca los href de el mismo archivo 
    @references_new = @doc.css("nav a").map{|url| url["href"]}
    #array_empty
    @links_array = []
    #Meter cada elemento de los links y ponerla en el array empty
    @links.each{|text| @links_array << text }
  end
  #Mostrar el contenido deseado por el usuario y ponerlo en un orden
  def show_content
    links
    #el inner text se debe poner cuando se quieres mostrar
    puts "\t#{@links_array[2].inner_text}: #{@references_new[2]} \n \t#{@links_array[3].inner_text}: #{@references_new[3]} \n \t#{@links_array[4].inner_text}: #{@references_new[4]} \n \t#{@links_array[5].inner_text}: #{@references_new[5]}\n \t#{@links_array[6].inner_text}: #{@references_new[6]}"
  end
  #obtener el titutlo de la pagina
  def title
    #selecciona etiqueta title
    title_page = @doc.search("title")
    #saca solo lo que esta escrito dentro de la etiqueta title
    puts "Titulo: #{title_page.inner_text}"
  end
end
#run program 
Browser.new(ARGV).run!
