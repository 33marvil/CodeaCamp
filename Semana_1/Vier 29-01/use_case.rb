puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
    when "English" then puts "Hello!"
    when "French" then puts "Bonjour!"
    when "German" then puts "Guten tag!"
    when "Finnish" then puts "Haloo!"
else puts "I don't know that language!"
end
# message.gsub(/[AAAAA]/, 'a')
	# message.gsub(/[AAAAB]/, 'b')
	# message.gsub(/[AAABA]/, 'c') 
	# message.gsub(/[AAABB]/, 'd') 
	# message.gsub(/[AABAA]/, 'e')
	# message.gsub(/[AABAB]/, 'f') 
	# message.gsub(/[AABBA]/, 'g')
	# message.gsub(/[AABBB]/, 'h') 
	# message.gsub(/[ABAAA]/, 'i') 
	# message.gsub(/[ABAAB]/, 'k')
	# message.gsub(/[ABABA]/, 'l')
	# message.gsub(/[ABABB]/, 'm')
	# message.gsub(/[ABBAA]/, 'n') 
	# #message.gsub(/[ABBAB]/, 'o')
	# #message.gsub(/[ABBBA]/, 'p')
	# #message.gsub(/[ABBBB]/, 'q')
	# #message.gsub(/[BAAAA]/, 'r')
	# #message.gsub(/[BAAAB]/, 's') 
	# #message.gsub(/[BAABA]/, 't')
	# #message.gsub(/[BAABB]/, 'v')
	# # message.gsub(/[BABAA]/, 'w')
	# # message.gsub(/[BABAB]/, 'x') 
	# #  message.gsub(/[BABBA]/, 'y')
	# # message.gsub(/[BABBB]/, 'z')
	case message
		when message.include?("AAAAA") then final_message 	<< "a"
		when message.include?("AAAAB") then final_message	<< "b"
		when message.include?("AAABA") then final_message	<< "c"
		when message.include?("AAABB") then final_message	<< "d"
		when message.include?("AABAA") then final_message	<< "e"
		when message.include?("AABAB") then final_message	<< "f"
		when message.include?("AABBA") then final_message	<< "g"
		when message.include?("AABBB") then final_message	<< "h"
		when message.include?("ABAAA") then final_message	<< "i"
		when message.include?("ABAAB") then final_message	<< "k"
		when message.include?("ABABA") then final_message	<< "l"
		when message.include?("ABABB") then final_message	<< "m"
		when message.include?("ABBAA") then final_message	<< "n"
		when message.include?("ABBAB") then final_message	<< "o"
		when message.include?("ABBBA") then final_message	<< "p"
		when message.include?("ABBBB") then final_message	<< "q"
		when message.include?("BAAAA") then final_message	<< "r"
		when message.include?("BAAAB") then final_message	<< "s"
		when message.include?("BAABA") then final_message	<< "t"
		when message.include?("BAABB") then final_message	<< "v"
		when message.include?("BABAA") then final_message	<< "w"
		when message.include?("BABAB") then final_message	<< "x"
		when message.include?("BABBA") then final_message	<< "y"
		when message.include?("BABBB") then final_message	<< "z"
	end