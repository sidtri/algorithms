def sum_of_digits(n,a,b,c)
	return -1 if n < 0
	diff1 = n-a
	diff2 = n-b
	diff3 = n-c
	count1 = (diff1 < 0) ? -1 : ((diff1 == 0) ? 1 : 1 + sum_of_digits(diff1,a,b,c))
	count2 = (diff2 < 0) ? -1 : ((diff2 == 0) ? 1 : 1 + sum_of_digits(diff2,a,b,c))
	count3 = (diff3 < 0) ? -1 : ((diff3 == 0) ? 1 : 1 + sum_of_digits(diff3,a,b,c))
	[count1, count2, count3].max
end

print sum_of_digits(23,12,9,11)