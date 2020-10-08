# @param {String} s
# @param {String} p
# @return {Integer[]}
require 'pry'
def find_anagrams(s, p)
	indices = []
	anagram_array = p.split("").sort
	string_array = s.split("")

	s.length.times do |starter|
		next unless p.include? s[starter]

		if anagram_array == string_array[starter, p.length].sort
			indices.push starter
		end

	end

	indices
end

print find_anagrams("cbaebabacd", "abc")