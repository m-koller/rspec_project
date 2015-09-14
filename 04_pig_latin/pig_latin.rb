def translate(word)
	vowels = %w[a e i o u]
	alphabet = ('a'..'z').to_a
	consonants = alphabet - vowels
	x = %w(qu squ)
	y = []

	sentence = word.split.each do |z|
		find = z.index(/[aeiou]/)
		if z.start_with?(*x)
			y << z[find + 1, z.length - find + 1] + z[0, find + 1] + "ay"
		elsif z.start_with?(*vowels)
			y << (z + "ay")
		elsif z.start_with?(*consonants)
			y << (z[find, z.length - find] + z[0, find] + "ay")
		end
	end
	y.join(" ")
end
				