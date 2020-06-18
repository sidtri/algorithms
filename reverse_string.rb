def reverse(string)
	output = (1..(string.length)).collect do |a|
		string[-a]
	end.join('')

	print output
end

reverse("siddhu")