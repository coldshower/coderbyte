# Have the function MeanMode(arr) take the array of numbers stored in arr and return 1 if the 
# mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 
# because the mode (3) equals the mean (3)). The array will not be empty, will 
# only contain positive integers, and will not contain more than one mode. 

def MeanMode(arr)
  mean = arr.reduce(:+) / arr.length
  mode = moder(arr)
  if mean == mode
    return 1
  else
    return 0
  end  
end
   

def moder(arr)
  arr.max_by do |elem|
    arr.count(elem)
  end
end