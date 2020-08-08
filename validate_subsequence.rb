# recursion

def validate_subsequence(arr, seq)
	return true if seq.length == 0
	return false if arr.length == 0
	seq_index = 0
	arr_index = 0
	if(arr[arr_index] == seq[seq_index])
		validate_subsequence(arr.slice(arr_index+1, arr.length - 1), seq.slice(seq_index + 1, seq.length - 1))
	else
		validate_subsequence(arr.slice(arr_index+1, arr.length - 1), seq)
	end
end

print validate_subsequence([5,1,22,25, 6, -1, 8, 10, 11, 7], [1,6,-1,10])