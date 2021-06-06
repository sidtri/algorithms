def binary_search(array, key)
	start = 0
	ender = array.length 

	asc = array[-1] > array[0]

	while start <= ender
		mid = (start + ender)/2

		return mid if array[mid] == key
		return -1 if mid <= 0 || mid >= (array.length - 1)
		
		if ((array[mid] > key) && asc) || ((array[mid] < key) && !asc)
			ender = mid - 1
		else
			start = mid + 1
		end
	end
end

print binary_search([4,6,10], 10)
puts ""
print binary_search([1,2,3,4,5,6,7,8], 4)
puts ""
print binary_search([10,6,4], 10)
puts ""
print binary_search([10,6,4], 4)
