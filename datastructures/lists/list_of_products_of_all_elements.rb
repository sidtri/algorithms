# Implement a function, find_product(lst), which modifies a list so that each index has a product
# of all the numbers present in the list except the number stored at that index.

# def find_product(lst)
# 	output = lst.collect.with_index do |element, index|
# 		sub_list = lst.dup
# 		sub_list.delete_at(index)
# 		sub_list.inject(&:*)
# 	end
# end

# simple solution is to multiply the left and right values of the elements
def find_product(lst)
	left = 1
	products = []
	lst.each.with_index do |elmt, index|
		products << left
		left = left * elmt
	end

	right = 1
	(0..(lst.length-1)).reverse_each do |index|
		products[index] = products[index] * right
		right = right * lst[index]
	end

	products
end

print(find_product([1,2,3,4]))
print(find_product([4,2,1,5,0]))
