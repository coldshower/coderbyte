# Have the function LookSaySequence(num) take the num parameter being passed and return the 
# next number in the sequence according to the following rule: to generate the next number 
# in a sequence read off the digits of the given number, counting the number of digits in groups 
# of the same digit. For example, the sequence beginning with 1 would be: 1, 11, 21, 1211, ... The 
# 11 comes from there being "one 1" before it and the 21 comes from there being 
# "two 1's" before it. So your program should return the next number in the sequence given num. 

def LookSaySequence(num)
  arr = num.to_s.split("")
  result = []
  counter = 0
  idx = 0
  current = arr[0]
  while idx < arr.length
    if arr[idx] != current
      result << ("#{counter}" + current)
      current = arr[idx]
      counter = 1
    else
      counter += 1
    end
    
    if idx == (arr.length - 1)
      result << ("#{counter}" + current)
    end
    idx += 1
  end
  result.join("").to_i         
end
         
   