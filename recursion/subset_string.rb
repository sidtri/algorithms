# i/p => abc
# o/p => "", "a", "b", "c", "ab", "ac", "bc", "abc"

def subset(string, current="", index=0)
	return current + " " if index == string.length
	replacement = string[index]
	print subset(string, current,index + 1)
	print subset(string, current + replacement, index + 1)
end

print subset("abc")