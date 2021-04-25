# Kadanes algorithm
def find_max_sum_sub_array(A):
  window_sum = A[0]
  total_sum = A[0]

  for element in A:
    if window_sum < 0:
      window_sum = element
    else:
      window_sum = window_sum + element
    total_sum = max(total_sum, window_sum)
    

  return total_sum;
