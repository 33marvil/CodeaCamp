#Method to pass a word to a pig latin
def pig_latin(str)
  #empty variable
  kite = ""  
  word = ""
  #pass to tiny the string
  #string.downcase!
  str.each do |string|
    #Array with the vowels
    vocales = ["a", "e", "i", "o", "u"]
    #For to know with what letter start the string
    for i in 0..string.length-1
      #if start with vowel
      if vocales.include? string[0]
        #take the first letter
        # first_letter = string[i]
        # #Puts the first letter to the end of the string
        # cambio_letter = string[i] #= string[1..-1]
        # cambio_letter = string[0..-1]
        # #print the word changed and add a way
        # puts cambio_letter + first_letter + "way"
        puts string + "way"
        #stop the for
        break
      #if the string star with consonant
      else 
        #Take string since the vowel and save in a variable
        kite = string[i+1..-1]
        #puts the consonants until the end of the string
        word = kite << string[0..i]  
        #finish the program when the for found a vowel
        break if vocales.include? word[0]
      end
      #puts  word << "ay"
    end
  #if the word started with vowel return the result 
  #Falta que no regrese la ultima palabra y acabe cuando 
  puts  word << "ay"
  end
end

#Pruebas
# puts "la palabra en pig latin es: "
pala = ARGV
pig_latin (pala)
# pig_latin("pig") 
# pig_latin("apple")
# pig_latin("I")
# pig_latin("egg")
# pig_latin("baNana")
# pig_latin("trAsh")
# pig_latin("Glove")
# pig_latin("school")
#Time.now(pig_latin("aldo"))
