require 'pry'
def insert(intervals, new_interval)
	merged = []


	index = 0
	while index < intervals.length && intervals[index][1] < new_interval[0]
		merged.append(intervals[index])
		index += 1
	end

	while index < intervals.length && intervals[index][0] <= new_interval[1]
		new_interval[0] = [intervals[index][0], new_interval[0]].min
		new_interval[1] = [intervals[index][1], new_interval[1]].max
		index += 1
	end

	merged.append(new_interval)

	while index < intervals.length
		merged.append(intervals[index])
		index += 1
	end

	merged
end

print insert([[1,3], [5,7], [8,12]], [4,6])