# Have the function FormattedDivision(num1,num2) take both parameters being passed, divide num1 by num2, 
# and return the result as a string with properly formatted commas and 4 significant digits after the decimal 
# place. For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345.6789". The output 
# must contain a number in the one's place even if it is a zero.  

def FormattedDivision(num1,num2)
  quotient = num1 / num2.to_f
  sections = quotient.to_s.split(".")
  [commify(sections[0]), decify(sections[1])].join(".")    
end

def commify(str)
  result = []
  result << str[0..((str.length % 3) - 1)] 
  str[((str.length % 3) - 1)..-1].scan(/.../).each do |slice|
    result << slice
  end
  result.join(",")
end

def decify(str)
    return str if str.length == 1
  str1 = str[0..4]
  if str1[-1].to_i > 4
    str1[-2] = str1[-2].next
  end
  str1[0..-2]
end
   