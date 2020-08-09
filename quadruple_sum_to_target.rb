# Two pointers
def searchQuadrapulets(arr, sum)
	output = []
	hash = {}
	start = 0
	ender = arr.length - 1
	index = 0
	while index < arr.length
		left_index = index - 1
		right_index = index + 1
		while left_index >= 0
			p = arr[index] + arr[left_index]
			hash[p] ||= []
			hash[p].append([arr[index], arr[left_index]])
			left_index -= 1
		end

		while right_index < arr.length
			q = arr[index] + arr[right_index]
			if hash.keys.include? (sum - q)
				hash[sum -q].each do |left_one|
					output.append([arr[index], arr[right_index]] + left_one)
				end
			end
			right_index += 1
		end
		index += 1
	end
	output
end

print searchQuadrapulets([4,1,2,-1, 1, -3], 1)