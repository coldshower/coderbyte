# Have the function BitwiseOne(strArr) take the array of strings stored in strArr, 
# which will only contain two strings of equal length that represent binary numbers, 
# and return a final binary string that performed the bitwise OR operation on both strings. 
# A bitwise OR operation places a 0 in the new string where there are zeroes in both binary 
# strings, otherwise it places a 1 in that spot. For example: 
# if strArr is ["1001", "0100"] then your program should return the string "1101" 

def BitwiseOne(strArr)
  result = ""
  idx = 0
  str1, str2 = strArr[0], strArr[1]
  while idx < str1.length
    if str1[idx] == "0" && str2[idx] == "0"
      result[idx] = "0"
    else
      result[idx] = "1"
    end
    idx += 1
  end
  result         
end
   
   