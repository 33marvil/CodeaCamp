#requerir la gema(libreria) net/http
require 'net/http'
#requerir la gema(libreria) nokogiri para
require 'nokogiri'

# Se deben usar las clases para obtener los elementos de twitter y ponerlos como el ejemplo lo pides
class TwitterScrapper
  def initialize(url)
    #Como el ARVG regresa los valores en un array, sacamos el valor del array para usarlo 
    link = url[0]
    #se puede usar el parse o no
    @uri = URI(link)
    page = Net::HTTP.get(@uri)
    # #ya no se usa el fileopen porque se obtiene respuesta
    @doc = Nokogiri::HTML(page)
    #Metodos a iniciar cada vez que corran una instancia de la clase
    extract_username
    extract_stats
    extract_tweets
  end
  #Metodo para sacar nombre de usuario
  def extract_username
    #guarda el nombre de usuario en una variable
    profile_name = @doc.search(".ProfileHeaderCard-name > a")#.first.inner_text
    #imprime el nombre de usuario
    puts "Username: #{profile_name.first.inner_text}"
  end
  #Sacara todos lo tweets a mostrar
  def extract_tweets
    #agarra todos los elementos de la clase .tweet
    tweets = @doc.search(".tweet")
    puts "Tweets"
    likes = ""
    #Se usa el .pop para sacar el ultimo ya que esta vacio
    tweets.pop
    tweets.each do |tweet|
      #selector de objeto css para el archivo de html que se quiere buscar entre parentesis va la clase o el id
      date = tweet.css("span._timestamp.js-short-timestamp").inner_text
      #p.TweetTextSize.TweetTextSize--16px.js-tweet-text.tweet-text
      post = tweet.css(".js-tweet-text-container").inner_text
      retweets = tweet.css(".ProfileTweet-actionCountForPresentation").first.text
      #p retweets.split(' ')
      likes = tweet.css(".ProfileTweet-actionCountForPresentation").last.text#[1]#.inner_text
      puts "\t#{date}: #{post}\n Retweets: #{retweets}, Favorites:#{likes}"
    end
    puts "-" * 80
  end
  #Metodo que extraera las estadisticas de la pagina de twitter que se ponga
  def extract_stats
    #guardar los datos que seran usados en una variable
    data = @doc.search(".ProfileNav-value")
    #crear un array vacio para poner las stats en ek
    stats = []
    #recorrer en el largo de las estadisticas
    for i in 0..data.length - 1
      #meter cada estadistica a el array stats
      stats << data[i].inner_text
      #imprimira para que tenga separacion
    end 
    # puts "-" * 80
    #Pone las estadisticas con los valores guardados en stats
    puts "Stats: Tweets: #{stats[0]}, Siguiendo: #{stats[1]}, Seguirdores: #{stats[2]}, Favoritos: #{stats[3]} \n"
  end

end
#guarda lo que el usuario ponga en una variable
link = ARGV
#le pasa la variable que el usuario puso y la da como parametro a la instancia de del objeto
prueba = TwitterScrapper.new(link)
