require 'pry'
def find_islands(map)
	@map = map
	count = 0
	@map.each.with_index do |eacharray, row|
		eacharray.each.with_index do |area, column|
			if ["x", 0, "0"].include? @map[row][column]
				next
			else
				count += 1
				loop_in(row, column)
			end
		end
	end

	count
end

def loop_in(row, column)
	return if row < 0 || column < 0
	return if row >= @map.length || column >= @map[0].length
	return if ["x", 0, "0"].include? @map[row][column]

	@map[row][column] = "x"
	loop_in(row, column+1)
	loop_in(row, column-1)
	loop_in(row+1, column)
	loop_in(row-1, column)
	""
end

print(find_islands([[1,1,0,0,0], [0,1,0,0,1], [1,0,0,1,1], [0,0,0,0,0], [1,0,1,0,1]]))
puts ""
print(find_islands([["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]))
puts ""  
print(find_islands([
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]))

# past code
# def find_islands(matrix)
# 	islands_count = 0

# 	matrix.length.times do |row|
# 		matrix[row].length.times do |column|
# 			if matrix[row][column] == 1
# 				islands_count += 1
# 				dfs(matrix, row, column)
# 			end
# 		end
# 	end
# 	islands_count
# end

# def dfs(matrix, row, column)
# 	return nil if row < 0
# 	return nil if column < 0
# 	return nil unless (matrix[row][column] rescue nil)
# 	return nil if matrix[row][column] == "*"
# 	return nil if matrix[row][column] == 0

# 	matrix[row][column] = "*"
# 	dfs(matrix, row + 1, column)
# 	dfs(matrix, row - 1, column)
# 	dfs(matrix, row, column + 1)
# 	dfs(matrix, row, column - 1)
# end