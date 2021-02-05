require 'set'

def find_permutations(nums)
	result = Set.new([[]])

	nums.each do |num|
		list = []
		result.each do |el|
			if el.empty?
				list << [num]
				next
			end
			(el.length+1).times do |time|
				a = el.dup
				list << a.insert(time, num)
			end
		end
		result = Set.new(list)
	end
	result
end


print find_permutations([1,3,5])