#Clase CreditCard
class Creditcard
  
  def initialize(name:, number:, expiration:, cvc:, status:)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end
  def name
    @name
  end
  def number
    @number
  end
  def expiration
    @expiration
  end
  def cvc 
    @cvc
  end
  def status
    @status
  end
  def status=(statusnew)
    @status = statusnew
  end

end


#Cinco instancias de CreditCard
tarjeta1 = Creditcard.new(name: "Amex",number: 2345673444, expiration: "12/15" ,cvc: 2345, status: [234, 567, 456, 567, 344])
tarjeta2 = Creditcard.new(name: "ScotiaBank",number: 234563744, expiration: "12/16" ,cvc: 2845, status: [234, 345, 456, 567, 344])
tarjeta3 = Creditcard.new(name: "Bancomer",number: 2345673444, expiration: "12/15" ,cvc: 2645, status: [234, 345, 456, 567, 344])
tarjeta4 = Creditcard.new(name: "Serfin",number: 2345673454, expiration: "12/20" ,cvc: 1345, status: [234, 345, 456, 567, 344])
tarjeta5 = Creditcard.new(name: "BanCoppel",number: 2345673464, expiration: "12/18" ,cvc: 2445, status: [567, 345, 456, 567, 344])
#p tarjeta1.status

#Array con cinco objetos de tarjetas de crédito
#...
cards = []
cards.push tarjeta1
cards.push tarjeta2
cards.push tarjeta3
cards.push tarjeta4
cards.push tarjeta5


#tests 

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas
#...
def showCards(array)
  puts "|\tname\t|\tnumber\t| expiration\t|\tcvc\t|\t  status\t\t| "
  puts "-" * 98
  array.each do |card|
    if card.name.length <= 6
      puts "|#{card.name}\t\t| #{card.number}\t|\t#{card.expiration}\t|\t#{card.cvc}\t|#{card.status}\t|"
    else
      puts "|#{card.name}\t| #{card.number}\t|\t#{card.expiration}\t|\t#{card.cvc}\t|#{card.status}\t|"
    end
  end
end
showCards(cards)


#driver code
# |     name     |     number     |    expiration  |      cvc      |           status          |
# ----------------------------------------------------------------------------------------------
# |   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
# |   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
# |   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
# |   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
# |   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |  