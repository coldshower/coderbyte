def LetterChanges(str)
	idx = 0
	length = str.length
	while idx < length
		if str[idx] =~ /[a-zA-Z]/
			if str[idx] == "z"
				str[idx] = "A"
			else
				if str[idx].next =~ /[aeiouAEIOU]/
					str[idx] = str[idx].next.upcase
				else
					str[idx] = str[idx].next
				end
			end
		end
		idx += 1
	end
	str
end

#plan
#1.iterate through string
#2.if current element is a letter, then check if it is a vowel
#3.if it is a vowel, return the uppercase
#4.if consonant, return the next letter. check if it is "z"