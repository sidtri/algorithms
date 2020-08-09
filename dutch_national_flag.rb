# Two pointer
def dutch_national_flag(arr)
	low = 0
	high = arr.length - 1
	i = 0

	while i <= high
		if arr[i] == 0
			arr[i], arr[low] = arr[low], arr[i]
			i += 1
			low += 1
		elsif arr[i] == 1
			i += 1
		else
			arr[i], arr[high] = arr[high], arr[i]
			high -= 1
		end
	end
	arr
end

print dutch_national_flag([1,0,2,1,0])