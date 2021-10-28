require 'pry'
require 'rb_heap'

@a = 1
@boxes = []
def solve_knapsack(profits, weights, capacity, index=0)
  if capacity <= 0 || index >= (profits.length)
    return 0
  end

  profit1 = 0
  if weights[index] <= capacity
    profit1 = profits[index] + solve_knapsack(profits, weights, capacity - weights[index], index+1)
  end


  profit2 = solve_knapsack(profits, weights, capacity, index+1)

  print("--#{@a= @a + 1}--")
  return [profit1, profit2].max  
end

# print(solve_knapsack([1, 6, 10, 16], [1, 2, 3, 5], 5))
# print(solve_knapsack([1, 6, 10, 16], [1, 2, 3, 5], 6))
print(solve_knapsack([1, 6, 10, 16], [1, 2, 3, 5], 7))

