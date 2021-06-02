def search_triplets(data)
	triplets = []

	slow, fast = 0, 1
	duplicates = []

	while slow < data.length
		if fast == data.length
			slow += 1
			fast = slow + 1
			duplicates = []
			next
		end

		diff = 0 - (data[slow] + data[fast])
		if((data[(fast + 1)..-1] - duplicates).include? diff)
			duplicates << data[fast]
			triplets << [data[slow], data[fast], diff]
		end

		fast += 1
	end

	return triplets
end

print search_triplets([-3, 0, 1, 2, -1, 1, -2])
puts ""
print search_triplets([-5, 2, -1, -2, 3])