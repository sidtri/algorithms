def happy_number(number)
	slow = number
	fast = number


	while true
		slow = find_square_sum(slow)
		fast = find_square_sum(find_square_sum(fast))

		if slow == fast
			break
		end
	end

	return slow == 1
end

def find_square_sum(num)
	sum = 0
	while num > 0
		sum += (num % 10) * (num % 10)
		num = num / 10
	end
	sum
end

print happy_number(23)
print happy_number(12)