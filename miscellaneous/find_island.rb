"""
Title: Number of islands.
Problem: Given a 2d grid map of '1's (land) and '0's (water), count the number
of islands. An island is surrounded by water and is formed by connecting
adjacent lands horizontally or vertically. You may assume all four edges of the
grid are all surrounded by water.

"""
require 'pry'
def find_island(grid)
	island_sum = 0
	revised = {}

	grid.length.times do |row|
		grid[row].length.times do |column|
			next if grid[row][column] == 0
			next if revised["#{row.to_s}-#{column.to_s}"]

			island_sum += 1
			revised = traverse(grid, row, column, revised)
		end
	end

	island_sum
end

def traverse(grid, row, column, revised={})
	return revised if row < 0
	return revised if column < 0
	return revised if (grid[row][column] rescue 0) == 0
	return revised if (revised["#{row.to_s}-#{column.to_s}"])

	revised["#{row.to_s}-#{column.to_s}"] = true

	revised = traverse(grid, row  , column-1, revised)
	revised = traverse(grid, row  , column+1, revised)
	revised = traverse(grid, row-1, column, revised)
	revised = traverse(grid, row+1, column, revised)

	revised
end


print find_island([[1,1,0,0,0],[1,1,0,0,0],[0,0,1,0,0],[0,0,0,1,1]])