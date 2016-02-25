def VowelCount(str)
  vowel = %[a e i o u]
  idx = 0
  length = str.length
  count = 0
  while idx < length
  	if vowel.include?(str[idx.downcase])
  		count += 1
  	end
  	idx += 1
  end
  count
end





