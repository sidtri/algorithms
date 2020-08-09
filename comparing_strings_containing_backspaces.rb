# Two pointers
def backspace_compare(str1, str2)
	start = str1.length - 1
	start2 = str2.length - 1
	while start >= 0 or start2 >= 0
		one, start = prev_element(str1, start)
		two, start2 = prev_element(str2, start2)

		return false if one != two
		start -= 1
		start2 -= 1
	end
	true
end

def prev_element(str, index, remove=0)
	return [str[index-remove], index-remove] if str[index] != "#"
	prev_element(str, index - 1, remove=remove+1)
end

print backspace_compare("xy#z", "xzz#")
print backspace_compare("xp#", "xyz##")