# Have the function TripleDouble(num1,num2) take both parameters being passed, and return 1 
# if there is a straight triple of a number at any place in num1 and also a straight double 
# of the same number in num2. For example: if num1 equals 451999277 and num2 equals 41177722899, 
# then return 1 because in the first parameter you have the straight triple 999 and you have a straight 
# double, 99, of the same number in the second parameter. If this isn't the case, return 0. 

def TripleDouble(num1,num2)
  arr1, str2 = num1.to_s.split(""), num2.to_s
  idx = 0
  num = ""
  check_2 = false
  
  while idx < (arr1.length - 2)
    if (arr1[idx] == arr1[idx + 1]) && (arr1[idx] == arr1[idx + 2])
      check_2 = true
      num = arr1[idx]
      idx = arr1.length
    end
    idx += 1
  end
  
  if check_2 == false
    return 0
  end
  if str2.include?(num + num)
    return 1
  else
    return 0
  end
end
         
   