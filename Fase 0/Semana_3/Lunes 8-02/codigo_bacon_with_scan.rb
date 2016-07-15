#method to decipher the code bacon
def baconian_cipher(message)
  #Separate the array in elements of five in a new array
  message_5 = message.scan(/.{5}/)
  #String empty that will be fill with the letters
  final_message = ""
  #iterate into the array for change the code for the letter
  message_5.each do |array_message|
    #comparacion del codigo bacon para obtener mensaje final
    case array_message
      when "AAAAA" then final_message << "a" 
      when "AAAAB" then final_message << "b"
      when "AAABA" then final_message << "c"    
      when "AAABB" then final_message << "d"     
      when "AABAA" then final_message << "e"
      when "AABAB" then final_message << "f"
      when "AABBA" then final_message << "g"
      when "AABBB" then final_message << "h"
      when "ABAAA" then final_message << "i"
      when "ABAAB" then final_message << "k"
      when "ABABA" then final_message << "l"
      when "ABABB" then final_message << "m"
      when "ABBAA" then final_message << "n"
      when "ABBAB" then final_message << "o" 
      when "ABBBA" then final_message << "p"
      when "ABBBB" then final_message << "q"
      when "BAAAA" then final_message << "r"
      when "BAAAB" then final_message << "s"
      when "BAABA" then final_message << "t"
      when "BAABB" then final_message << "v"
      when "BABAA" then final_message << "w"
      when "BABAB" then final_message << "x"
      when "BABBA" then final_message << "y"
      when "BABBB" then final_message << "z"
    end
  end
  #return the final message
  final_message
end

#Pruebas
p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres" 
