def min_max(lst)
	pos = 0
	neg = -1
	is_positive = false
	new_lst = lst.collect.with_index do |elt, index|
		if is_positive
			num = lst[pos]
			pos += 1
		else
			num = lst[neg]
			neg -= 1
		end
		is_positive = !is_positive
		num
	end

	new_lst
end

print(min_max([1,2,3,4,5]))