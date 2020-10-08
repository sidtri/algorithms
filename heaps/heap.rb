# Min heap
# left item: 2i+1
# right item: 2i+2
# parent: (i-1)/2

# Usecase: we use heaps to schedule meetings, or priority queues.
# eg: doctor visit only the ones with priority even if someone comes first. we call this priority queue


# Full tree: tree with each node has two children except leaves
# Complete tree: tree with full tree exception of leaves which should occupy left first

# binary tree is complete tree

# Heaps: Min & max
# min heap: parent node has minimum value


def build_heap(array)
	size = array.length

	(0..(size/2)).reverse_each do |index|
		array = heapify(array, index, size)
	end

	array
end

def heapify(arr, index, size)
	max = index
	left = (2 * index) + 1
	right = left + 1

	if(left < size && arr[left] > arr[max])
		max = left
	end

	if(right < size && arr[right] > arr[max])
		max = right
	end

	if(max != index)
		temp = arr[max]
		arr[max] = arr[index]
		arr[index] = temp
		arr = heapify(arr, max, size)
	end
	arr
end

print build_heap([3,4,5,20,12,5,9])