# Have the function HammingDistance(strArr) take the array of strings stored in strArr, which 
# will only contain two strings of equal length and return the Hamming distance between them. 
# The Hamming distance is the number of positions where the corresponding characters are different. 
# For example: if strArr is ["coder", "codec"] then your program should return 1. The string will 
# always be of equal length and will only contain lowercase characters from the alphabet and numbers. 

def HammingDistance(strArr)
  counter = 0
  idx = 0
  while idx < strArr[0].length
    if strArr[0][idx] != strArr[1][idx]
      counter += 1
    end
    idx += 1
  end
  counter 
end
   

   