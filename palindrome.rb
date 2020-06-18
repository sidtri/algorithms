def palindrome(string, start=0, string_end=-1)
	# (1..string.length).each do |a|
	return false if string.length == 0
	string_end = string.length - 1 if string_end == -1
	return false if string[start] != string[string_end]
	palindrome(string, start + 1, string_end - 1)
	true
end


print palindrome("abcba")
print palindrome("siddhu")
print palindrome("s")
print palindrome('')