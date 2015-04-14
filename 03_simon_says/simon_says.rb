def echo(say)
	say.to_s
end


def shout(say)
	say.upcase
end


def repeat(say, rep=2)
	repeated = []
	rep.times {repeated << say}
	repeated.join(' ')
end



def start_of_word(word, num_letters)
	word[0...num_letters]
end


def first_word(word)
	first = word.split(' ')
	first[0]
end


def titleize(words)
	title = words.split(' ')

	title.each do |w|
		unless (w == 'a' || w == 'an' || w == 'the' || w == 'at' || w == 'by' || w == 'for' || w == 'in' || w == 'of' || w == 'on' || w == 'to' || w == 'up' || w == 'and' || w == 'as' || w == 'but' || w == 'it' || w == 'or' || w == 'nor' || w == 'over')
			w.capitalize!
		end
	end

	title[0].capitalize!
	title.join(' ')
end