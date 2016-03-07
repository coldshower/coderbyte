# Have the function PowersofTwo(num) take the num parameter being passed which will be an integer 
# and return the string true if it's a power of two. If it's not return the string false. For example 
# if the input is 16 then your program should return the string true but if the input is 22 
# then the output should be the string false. 

def PowersofTwo(num)
  num2 = num
  while num2 >= 1
    if num2 == 1
      return true
    end
    num2 = num2 / 2.0
  end
  return false
end