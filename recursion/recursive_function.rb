# Not a tail recursive function, bvecause the recursion doesnt happen at end of the method
def recursive(n)
	return if n == 0
	recursive(n-1)
	print(n)
end

recursive(10)