# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
	return intervals if intervals.length < 1
	slow, fast = 0, 1
	output = []
	range_start = intervals[slow][0]
	range_end = intervals[slow][1]

	while slow < intervals.length
		unless intervals[fast]
			output << [range_start, range_end]
			slow += 1
		else
			if intervals[slow][1] < intervals[fast][0]
				output << [range_start, range_end]
				slow = fast
				fast += 1
				range_start = intervals[slow][0]
				range_end = intervals[slow][1]
			else
				range_end = intervals[fast][1]
				fast += 1
			end
		end
	end

	output.uniq
end

print(merge([[1,3], [2,6], [8,10], [15,18]]))
puts("")
print(merge([[1,4], [4,5]]))