# Have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are 
# correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello (world))", 
# then the output should be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not 
# correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1. 

def BracketMatcher(str)
  left_count = 0
  str.split("").each do |letter|
    if letter == "("
      left_count += 1
    elsif letter == ")"
      left_count -= 1
    end
    if left_count < 0
      return 0
    end
  end
  if left_count == 0
    return 1
  else
    return 0
  end
end
         
   