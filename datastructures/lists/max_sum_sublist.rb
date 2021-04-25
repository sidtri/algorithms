# Given an unsorted list AA, the maximum sum sub list is the sub list (contiguous elements) 
# from AA for which the sum of the elements is maximum.
# In this challenge, we want to find the sum of the maximum sum sub list.
# This problem is a tricky one because the list might have negative integers in any position,
# so we have to cater to those negative integers while choosing the continuous sublist with the 
# largest positive values.

def find_max_sum(lst)
	max_sum = window_sum = lst[0]

	lst.each do |elmt|
		if window_sum + elmt < window_sum
			window_sum = 0
		end
		window_sum = [window_sum, window_sum + elmt].max
		max_sum = [max_sum, window_sum].max
	end
	max_sum
end

print(find_max_sum([-4,2,-5,1,2,3,6,-5,1]))