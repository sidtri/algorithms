require 'pry'
require 'rb_heap'

def rearrange_string(string)
	mapper = {}
	string.split("").each do |a|
		mapper[a] ? (mapper[a] += 1) : (mapper[a] = 1)
	end

	data = []
	keys = mapper.keys
	while !keys.empty?
		keys.each do |key|
			if(data[-1] != key)
				data << key
			end
			mapper[key] += -1
		end

		delete_keys = mapper.select{|k, v| v == 0}.keys
		delete_keys.each do |ky|
			mapper.tap {|a| a.delete(ky) }
		end

		keys = mapper.keys
	end

	return data.length == string.length ? data.join("") : "--"
end

print(rearrange_string("aappp"))
puts ""
print(rearrange_string('Programming'))
puts ""
print(rearrange_string('aapa'))