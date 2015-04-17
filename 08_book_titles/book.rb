class Book

	attr_accessor :title

	def title

		# List of words that should not be capitalized
		exceptions = ['the', 'a', 'an', 'and', 'in', 'of']
		new_title = []

		# Split title into words, capitalize only if the word is in the list of exceptions
		@title.split.each do |word|
			word.capitalize! unless exceptions.include?(word.downcase)
			new_title << word
		end

		# Always capitalize the first word
		new_title.first.capitalize!
		@title = new_title.join(' ')
	end

end