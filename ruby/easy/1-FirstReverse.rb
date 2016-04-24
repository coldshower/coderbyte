def FirstReverse(str)
	idx = str.length
	result = ""
	while idx >= 0
		result << str[idx]
		idx -= 1
	end
	result
end