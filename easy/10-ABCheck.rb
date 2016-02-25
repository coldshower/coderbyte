def ABCheck(str)
  str.downcase!
	idx = 0
	length = str.length
	while idx < length
		if str[idx] == "a"
			if str[idx - 3] == "b" || str[idx + 3] == "b"
				return true
			end
		end
		idx += 1
	end
	return false
end



