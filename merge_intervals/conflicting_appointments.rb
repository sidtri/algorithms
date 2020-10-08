# Intervals intersection
require 'pry'
def conflicting_apppointments(intervals)
	index, start, ender = 0, 0, 1

	intervals = intervals.sort_by {|a| a[start]}

	while index < (intervals.length - 1)
		if intervals[index][ender] > intervals[index + 1][start]
			return "cannot attend all appointments"
		end

		index += 1
	end

	"can attend all appointments"
end

print conflicting_apppointments([[6,7], [2,4], [8,12]])
puts ""
print conflicting_apppointments([[4,5], [2,3], [3,6]])
