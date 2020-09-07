require 'pry'
class Interval
	attr_accessor :start, :ender
	def initialize(start, ender)
		@start = start
		@ender = ender
	end
end

def merge(intervals)
	merged_intervals = []
	sorted = intervals.sort_by(&:start)

	start = sorted[0].start
	ender = sorted[0].ender
	(1..(sorted.length - 1)).each do |index|
		current_interval = sorted[index]
		if ender < current_interval.start
			merged_intervals.append(Interval.new(start,ender))
			start = current_interval.start
			ender = current_interval.ender
		else
			ender = [current_interval.ender, ender].max
		end
	end
	merged_intervals.append(Interval.new(start, ender))
	merged_intervals
end

print merge([Interval.new(1,4), Interval.new(5,8), Interval.new(9,12), Interval.new(3,5)])
puts ""
print merge([Interval.new(6,7), Interval.new(2,4), Interval.new(5,9)])