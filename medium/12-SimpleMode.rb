# Have the function SimpleMode(arr) take the array of numbers stored in arr and return the number that 
# appears most frequently (the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should be 4. 
# If there is more than one mode return the one that appeared in the array first (ie. [5, 10, 10, 6, 5] should 
# return 5 because it appeared first). If there is no mode return -1. The array will not be empty. 

def SimpleMode(arr)
  counts = arr.reduce(Hash.new(0)) do |h, k|
    h[k] += 1
    h
  end
  
  if counts.values.any? {|v| v > 1}
    return arr.max_by {|num| counts[num] += 1 }
  end
  
  -1        
end
   