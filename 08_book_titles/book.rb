class Book
	attr_reader :title
	def title=(title_string)
		words = title_string.split(" ")
		prep = ["a", "an", "and", "of", "the", "in"]
		words = [words[0].capitalize!] + words[1..words.length].each do |x|
			if prep.include? x
			else
				words = x.capitalize!
			end
		end
		@title = words.join(" ")
	end
end