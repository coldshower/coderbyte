# Have the function DivisionStringified(num1,num2) take both parameters being passed, divide num1 by num2, 
# and return the result as a string with properly formatted commas. If an answer is only 3 digits long, 
# return the number with no commas (ie. 2 / 3 should output "1"). For example: if num1 is 123456789 and 
# num2 is 10000 the output should be "12,346". 

def DivisionStringified(num1,num2)
  quotient = num1.fdiv(num2).round.to_s
  result = ""
  
  leading = quotient.length % 3
  result << quotient[0..leading-1]
  
  if (quotient.length - 1) / 3 > 0
    quotient[leading..-1].scan(/.../).each do |section|
        result << ","
        result << section 
    end
  end
  result         
end