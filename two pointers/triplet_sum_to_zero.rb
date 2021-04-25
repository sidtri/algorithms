def search_triplets(data)
	triplets = []

	tortoise, rabbit = 0, 1
	duplicates = []

	while tortoise < data.length
		if rabbit == data.length
			tortoise += 1
			rabbit = tortoise + 1
			duplicates = []
			next
		end

		diff = 0 - (data[tortoise] + data[rabbit])
		if((data[(rabbit + 1)..-1] - duplicates).include? diff)
			duplicates << data[rabbit]
			triplets << [data[tortoise], data[rabbit], diff]
		end

		rabbit += 1
	end

	return triplets
end

print search_triplets([-3, 0, 1, 2, -1, 1, -2])
puts ""
print search_triplets([-5, 2, -1, -2, 3])