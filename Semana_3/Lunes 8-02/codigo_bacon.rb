def baconian_cipher(message)
	fin_message = ""
	baconian_key = ""
	new_hash= {
		a: "AAAAA", 
		b: "AAAAB",
		c: "AAABA",
		d: "AAABB",     
		e: "AABAA",
		f: "AABAB",
		g: "AABBA",
		h: "AABBB",
		i: "ABAAA",
		k: "ABAAB",
		l: "ABABA",
		m: "ABABB",
		n: "ABBAA",
		o: "ABBAB",	
		p: "ABBBA",
		q: "ABBBB",
		r: "BAAAA",
		s: "BAAAB",
		t: "BAABA",
		v: "BAABB",
		w: "BABAA",
		x: "BABAB",
		y: "BABBA",
		z: "BABBB"
	}
	
	message.split("").each_slice(5){ |var| 
      baconian_key = var.join
	  new_hash.each do |key, value|
		fin_message << key.to_s if baconian_key == value
	  end	 
    }
	p fin_message
	
end

#Pruebas
p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"	