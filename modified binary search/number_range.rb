# given sorted array, find key all occurances from start to ender

def number_range(array, key)
	start, ender = 0, (array.length - 1 )
	occurances = [-1, -1]

	while start <= ender
		mid = (start + ender )/ 2		

		if array[mid] == key
			# search backwards
			while array[mid] == key
				mid = mid - 1
			end

			mid = mid + 1 if array[mid] != key
			occurances[0] = mid

			# search forward
			while array[mid] == key
				mid = mid +  1
			end
			mid = mid - 1 if array[mid] != key
			occurances[1] = mid
		end


		if array[mid] > key
			ender = mid - 1
		else
			start = mid + 1
		end
	end

	occurances
end

print number_range([1,2,3,6,6,6,9], 6)
puts ""
print number_range([1,3,8,10,15], 12)
puts ""
print number_range([4,6,6,6,9], 6)