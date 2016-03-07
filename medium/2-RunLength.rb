# Have the function RunLength(str) take the str parameter being passed and return a compressed version 
# of the string using the Run-length encoding algorithm. This algorithm works by taking the occurrence 
# of each repeating character and outputting that number along with a single character of the repeating 
# sequence. For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, 
# or symbols. 

def RunLength(str)
  result = [[1,str[0].chr]]
  index = 0
  current_letter = str[0].chr
  str.split("")[1..-1].each do |letter|
    if letter == current_letter
      result[index][0] += 1
    else
      result << [1, letter]
      current_letter = letter
      index += 1
    end
  end
  result.flatten.join("")   
end
  
   
   