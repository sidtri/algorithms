# two pointer
def square(arr)
	starter = 0
	ender = arr.length - 1
	output = Array.new(arr.length)
	currentOutputIndex = output.length - 1
	while starter <= ender
		left = arr[starter] * arr[starter]
		right = arr[ender] * arr[ender]
		if left > right
			output[currentOutputIndex] = left
			starter += 1
		else
			output[currentOutputIndex] = right
			ender -= 1
		end
		currentOutputIndex -= 1
	end
	return output
end

print square([-2,-1,0,2,3])