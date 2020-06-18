def fizz_buzz(n)
	(1..n).each do |a|
		output = ""
		output += "fizz" if a%3 == 0
		output += "buzz" if a%5 == 0
		output += a.to_s if output.empty?
		puts(output)
	end
end

fizz_buzz(30)