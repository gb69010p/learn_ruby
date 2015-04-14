def translate(word)

	# Makes string lower case and separates words into array
	words = word.downcase.split(' ')
	translated_words = []

	# Iterates through each word, applies pig latin, and then combines to return a string
	words.each do |word|

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
		translated_words << translation
	end

	translated_words = translated_words.join(' ')
	translated_words



	# Old version, can delete once above works

	# word.downcase!
	# consonants = ''
	# translation = word
	# i = 0

	# until (word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u')
	# 	consonants << word[i]
	# 	translation = word[(i+1)..-1]
	# 	i += 1
	# end

	# translation = translation << consonants << 'ay'

	# translation
end

