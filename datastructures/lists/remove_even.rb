# Implement a function that removes all the even elements from a
# given list. Name it remove_even(list).

def remove_even(list)
	list.select{|a| a % 2 != 0 }
end

print(remove_even([1,2,4,5,10,6,3]))
