
def deaf_grandma
  count = 0
  while count < 3 #|| true
    puts "Dile algo a tu abuela"
    saludo = gets.chomp
    if saludo == "BYE TQM"
      puts "adios hijito"
      count += 1
    elsif saludo == saludo.upcase
      puts "NO, NO DESDE 1983"
    else 
      puts "HUH?! NO TE ESCUCHO, HIJO!"
    end
  end
end
deaf_grandma
