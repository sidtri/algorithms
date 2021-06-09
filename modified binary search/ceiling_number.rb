# pass ascending integers in an array. Find the index of the smallest or same number which is greater than key
def find_ceiling(array, key)
	start, ender = 0, (array.length - 1)

	maybe = -1
	while start <= ender
		mid = (start + ender)/2

		return mid if array[mid] == key

		if array[mid] > key
			maybe = mid
			ender = mid - 1
		else
			start = mid + 1
		end
	end

	maybe
end


print find_ceiling([4,6,10], 6)
puts ""
print find_ceiling([1,3,8,10,15], 12)
puts ""
print find_ceiling([4,6,10], 17)
puts ""
print find_ceiling([4,6,10], -1)
