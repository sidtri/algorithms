require 'set'

def find_subsets(nums)
	subsets = Set.new([[]])
	nums.each do |num|
		length = subsets.length
		subsets_arr = subsets.to_a
		length.times do |index|
			arr = subsets_arr[index].dup
			subsets.add(arr.push(num))
		end
	end
	subsets.to_a
end


print find_subsets([1,5,3])