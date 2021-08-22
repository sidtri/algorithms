require 'rb_heap'

class FrequencyMapper
	attr_accessor :key, :times
	def initialize(key, times)
		@key = key
		@times = times
	end

	def >(a)
		@times > a.times
	end

	def to_s
		@key
	end
end

def freq_sort(string)
	stringFreq = {}
	string.split("").each do |a|
		stringFreq[a] = stringFreq.fetch(a, 0) + 1
	end

	maxHeap = Heap.new(:>)

	stringFreq.each do |letter, times|
		maxHeap.add(FrequencyMapper.new(letter, times))
	end

	maxHeap.to_a.collect{|a| a.key * a.times }.join("")
end

print freq_sort("Programming")
puts ""
print freq_sort("abcbab")
