require 'pry'
def equal_subset_rec(array, sum, index)
	if sum == 0 
		return true
	end

	if array.length == 0 or index >= array.length
		return false
	end

	selectedEl = array[index]

	if(array[index] <= sum)
		if(equal_subset_rec(array, sum - selectedEl, index +1))
			return true
		end
	end

	equal_subset_rec(array, sum, index + 1)
end

def equal_subset(array)
	sum = array.sum()

	if sum % 2 != 0
		return false
	end

	equal_subset_rec(array, sum/2, 0)
end

# def equal_subset(array)
# 	combs = combinations(array)
# 	halfer = array.sum() / 2

# 	output = combs.select{|a| a.inject(&:+) == halfer}
# 	(output.length == 2) ? output : []
# end

print(equal_subset([1,2,3,4]))
print(equal_subset([1,2,3,3]))