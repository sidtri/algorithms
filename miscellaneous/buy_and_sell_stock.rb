require 'pry'
# buy and sell stocks. array provided contains price of stock per day i

# @param [Array] prices
# @return [Integer]
def max_profit(prices)
	profit = 0
	prices.each.with_index do |price, index|
		p2array = prices[(index+1)..]

		if p2array
			p2array.each do |p2|
				profit = [p2 - price, profit].max
			end
		end
	end

	profit
end

print(max_profit([7,1,5,3,6,4]))
puts ""
print(max_profit([7,6,4,3,1]))
puts ""
print(max_profit([1,2]))

# lets take 7 as buyer, we can sell at 7, or 1, or 5...
# lets take 1 as buyer, we can sell at 5, 3,6,4
# buy at 5, sell at 5 or 3 or 6 or 4
# means n*n

# Assumptions
# > Once bought, only the elements next to it are profits. We cannot go bac
# > All prices are integers
# > we cannot sort this array, because the input is timeseries.
