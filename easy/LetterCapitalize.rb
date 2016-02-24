def capitalize(str)
	str[0] = str[0].upcase
	str
end

def LetterCapitalize(str)
	str2 = str.split(" ")
	str2.map do |word|
		capitalize(word)
	end.join(" ")
end

#plan
#1.split string by space
#2.iterate through array of words
#3.for each word, change the first letter to be capitalized
#4.join and return