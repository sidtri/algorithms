require 'pry'
def find_islands(matrix)
	islands_count = 0

	matrix.length.times do |row|
		matrix[row].length.times do |column|
			if matrix[row][column] == 1
				islands_count += 1
				dfs(matrix, row, column)
			end
		end
	end
	islands_count
end

def dfs(matrix, row, column)
	return nil if row < 0
	return nil if column < 0
	return nil unless (matrix[row][column] rescue nil)
	return nil if matrix[row][column] == "*"
	return nil if matrix[row][column] == 0

	matrix[row][column] = "*"
	dfs(matrix, row + 1, column)
	dfs(matrix, row - 1, column)
	dfs(matrix, row, column + 1)
	dfs(matrix, row, column - 1)
end


find_islands([[1,1,0,0,0], [0,1,0,0,1], [1,0,0,1,1], [0,0,0,0,0], [1,0,1,0,1]])