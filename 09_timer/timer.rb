class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		h = @seconds / 3600
		m = (@seconds % 3600) / 60
		s = @seconds % 60
		digit(h) + ":" + digit(m) + ":" + digit(s)
	end

	def digit(n)
		n.to_s.length == 1 ? "0#{n}" : "#{n}"
	end
end