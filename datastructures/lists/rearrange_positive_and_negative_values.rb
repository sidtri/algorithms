# Given a list, can you rearrange its elements in such a way that the negative elements 
# appear at one end and positive elements appear at the other?
# Solve this problem in Python and see if your code runs correctly!

def rearrange(lst)
	negative = lst.select {|a| a < 0 }
	positive = lst.select {|a| a >= 0 }
	negative + positive
end

print(rearrange([10, -1, 20, 4, 5, -9, -6]))

