def top_k_numbers(array, k)
	
end

def build_heap(array)
	size = array.length / 2

	size.downto(0).each do |index|
		heapify(array, index, size)
	end
end

def heapify(array, index, size)
	left = 
end

top_k_numbers([3,1,5,12,2,11], 3)