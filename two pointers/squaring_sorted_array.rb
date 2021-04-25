def square(data)
  asc, desc = 0, data.length-1
  squared = []

  while asc <= desc
  	asc_data = data[asc] ** 2
  	desc_data = data[desc] ** 2

  	if asc_data > desc_data
  		squared.unshift(asc_data)
  		asc += 1
  	else
  		squared.unshift(desc_data)
  		desc -= 1
  	end
  end

  return squared
end


print square([-2,-1,0,2,4])