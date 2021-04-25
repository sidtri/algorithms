def right_rotate(lst, k)
	lst.rotate(lst.length - k)
end

print(right_rotate([10,20,30,40,50], 3))