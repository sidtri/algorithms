def sum_of_digits(number)
	return number if number < 10
	return sum_of_digits(number/10) + (number % 10)
end

print sum_of_digits(133324)