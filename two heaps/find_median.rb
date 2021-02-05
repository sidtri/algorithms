class Median
	def initialize
		@numbers = []
	end

	def add_number(num)
		@numbers.push(num)
	end

	def median
		length = @numbers.length
		if length.even?
			(@numbers[(length/2) - 1] + @numbers[length/2])/2
		else
			@numbers[length/2]
		end
	end
end


