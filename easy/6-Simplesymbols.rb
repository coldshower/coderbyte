def SimpleSymbols(str)
	idx = 0
	length = str.length
	while idx < length
		if str[idx] =~ /[a-zA-Z]/
			if idx == 0 || idx == (length - 1)
				return false
			else
				if !(str[idx - 1] == "+" && str[idx + 1] == "+")
					return false
				end
			end
		end
		idx += 1
	end
	return true
end

#plan
#1. iterate through string.
#2. if current element is a letter
#3. if the the letter is the first or last element of string, return false, because it is not surrounded
#4. otherwise check to see if the prev and following elements are both "+"
#5. if not, return false
#6. as a default, return true