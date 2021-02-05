# Implement a function that merges two sorted lists of m and n elements respectively, 
# into another sorted list. Name it merge_lists(lst1, lst2).

# Solution: Merge in place

def merge_lists(list1, list2)
	ind1 = 0
	ind2 = 0

	while (ind1 < list1.length) && (ind2 < list2.length)
		if list1[ind1] > list2[ind2]
			list1.insert(ind1, list2[ind2])
			ind1 += 1
			ind2 += 1
		else
			ind1 += 1
		end
	end

	if ind2 < list2.length
		list1 = list1 + list2[ind2..-1]
	end

	list1
end

print(merge_lists([1,3,4,5], [2,6,7,8]))