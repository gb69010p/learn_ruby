def translate(word)

	# Marks each word that begins with capital (true) or not (false)
	words_caps = word.split(' ')
	caps = []

	words_caps.each do |word|
		
		# puts "#{word} - #{word[0]}"
		if (word[0] == word[0].upcase)
			caps << true
		else
			caps << false
		end
	end


	# Makes string lower case and separates words into array
	words = word.downcase.split(' ')
	translated_words = []

	# Iterates through each word, applies pig latin, and then combines to return a string
	words.each do |word|

		# Removes punctuation
		punctuation = word.slice!(/[[:punct:]]/)
		consonants = ''
		translation = word

		i = 0

		until (word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u')
			consonants << word[i]
			translation = word[(i+1)..-1]

			# Handles words that contain 'qu'
			if (word[i] == 'q' && word[i+1] == 'u')
				consonants << word[i+1]
				translation = word[(i+2)..-1]
			end

			i += 1
		end

		translation = translation << consonants << 'ay'

		# Re-attaches punctuation to end of string
		translation << punctuation.to_s
		translated_words << translation
	end


	# Re-capitalize based on marked words
	for i in 0...(caps.size)
		if (caps[i] == true)
		translated_words[i] = translated_words[i].capitalize
		# puts "#{translated_words[i]}"
		end
	end


	translated_words = translated_words.join(' ')
	# puts "translated_words: #{translated_words}"
	translated_words
end  
