def echo(says)
	says
end

def shout(says)
	says.upcase
end

def repeat(says, x = 2)
	says + (" " + says) * (x - 1)
end

def start_of_word(says, x)
	says[0..x-1]
end

def first_word(says, x=1)
	array = says.split(" ")
	array[0]
end

def titleize(says)
	new_says = says.split.each { |says|
		says.capitalize! unless (says == "and" || says == "over" || says == "the")
	}
	new_says[0].capitalize!
	new_says.join(" ")
end
