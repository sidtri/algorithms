def find_second_maximum(lst)
	secmax = -1.0/0.0
	max = lst[0]

	lst.each do |elmt|
		if elmt > max
			max_before = max
			max = elmt
			secmax = max_before
		end
		secmax = elmt if (secmax < elmt) && (elmt != max)
	end
	secmax
end

puts(find_second_maximum([9,2,3,6]))
puts(find_second_maximum([9,20,5,99]))
print(find_second_maximum([9,20,99,21]))
