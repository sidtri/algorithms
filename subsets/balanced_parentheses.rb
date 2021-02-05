require 'set'

def generate_balanced_paranthesis(num)
	result = [[]]

	(num * 2).times do |step|
		arr = []
		result.each do |element|
			open_count = element.select{|a| a == "(" }.count
			closed_count = element.length - open_count
			arr << element.dup.push("(") if open_count < num
			arr << element.dup.push(")") if (open_count > 0) && (closed_count < open_count)
		end
		result = arr
	end
	
	result.collect {|a| a.join("")}.join(", ")
end

puts generate_balanced_paranthesis(2)
puts generate_balanced_paranthesis(3)
