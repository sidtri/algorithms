def remove_duplicates(arr)
	return unless arr.length > 1
  slow,fast=0,1

  while slow < arr.length

  	if arr[fast] == arr[slow]
  		arr.delete_at(fast)
  	else
  		slow += 1
  		fast += 1
  	end
  end

  return arr
end

print remove_duplicates([2, 2, 2, 11])

print remove_duplicates([2, 3, 3, 3, 6, 9, 9])