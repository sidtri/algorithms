# Pattern: Two pointers
def pair_with_targetsum(arr, sum)
	starter = 0
	ender = arr.length - 1
	summer = arr[starter] + arr[ender]
	while summer != sum
		return false if starter == ender
		if summer < sum
			starter += 1
		else
			ender -= 1
		end
		summer = arr[starter] + arr[ender]
	end
	return [arr[starter], arr[ender]]
end

print pair_with_targetsum([1,2,3,4,5], 8)
print pair_with_targetsum([2,8,20,36,45], 44)