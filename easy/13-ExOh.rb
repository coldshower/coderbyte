def ExOh(str)
	x_count, o_count = 0, 0
	idx = 0
	length = str.length
	while idx < length
		if str[idx] == "x"
			x_count += 1
		else
			o_count += 1
		end
		idx += 1
	end

	if x_count == o_count 
		return true
	else
		return false
	end
end




