def find_max_sum_nonadjacent(a):
  new_arr = []
  for idx,val in enumerate(a):
    if idx == 0:
      new_arr.append(val)
    elif idx == 1:
      new_arr.append(max(a[0], a[1]))
    else:
      new_arr.append(max(new_arr[idx - 1], val + new_arr[idx - 2]))
  return max(new_arr)