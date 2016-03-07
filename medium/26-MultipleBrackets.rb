# HaveThe function MultipleBrackets(str) take the str parameter being passed and return 1 #ofBrackets if the 
# brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is 
# "(hello [world])(!)", then the output should be 1 3 because all the brackets are matched and there are 
# 3 pairs of brackets, but if str is "((hello [world])" the the output should be 0 because the brackets 
# do not correctly match up. Only "(", ")", "[", and "]" will be used as brackets. If str contains no brackets return 1. 

def MultipleBrackets(str)
  arr = str.split("")
  left1count, left2count, totalpairs = 0, 0, 0
  arr.each do |elem|
    case elem
      when "("
      left1count += 1
      when ")"
      if left1count == 0
        return "0"
      else
        left1count -= 1
        totalpairs += 1
      end
      when "["
      left2count += 1
      when "]"
      if left2count == 0
        return "0"
      else
        left2count -= 1
        totalpairs += 1
      end
    end
  end
  if left1count > 0 || left2count > 0
    return "0"
  else
    return "1 #{totalpairs}"
  end
end

         
   