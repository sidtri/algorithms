# Intervals intersection
def merge(intervals, intersections)
	index, index2, start, ender = 0, 0, 0, 1
	merged = []

	while index < intervals.length && index2 < intersections.length
		a_loops_b = intervals[index][start] >= intersections[index2][start] && intervals[index][start] <= intersections[index2][ender]

		b_loops_a = intersections[index2][start] >= intervals[index][start] && intersections[index2][start] <= intervals[index][ender]

		if a_loops_b || b_loops_a
			s = [intervals[index][start], intersections[index2][start]].max
			e = [intervals[index][ender], intersections[index2][ender]].min
			merged.append([s,e])
		end

		if intervals[index][ender] < intersections[index2][ender]
			index += 1
		else
			index2 += 1
		end
	end

	merged
end

print merge([[1,3], [5,6], [7,9]], [[2,3], [5,7]])
puts ""
print merge([[1,3], [5,7], [9,12]], [[5,10]])