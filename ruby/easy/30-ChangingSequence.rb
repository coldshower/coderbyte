# Have the function ChangingSequence(arr) take the array of numbers stored in arr and return 
# the index at which the numbers stop increasing and begin decreasing or stop decreasing and begin 
# increasing. For example: if arr is [1, 2, 4, 6, 4, 3, 1] then your program should return 3 
# because 6 is the last point in the array where the numbers were increasing and the next number 
# begins a decreasing sequence. The array will contain at least 3 numbers and it may contains 
# only a single sequence, increasing or decreasing. If there is only a single sequence in the array, 
# then your program should return -1. Indexing should begin with 0. 

def ChangingSequence(arr)
  status = arr[0] <=> arr[1]
  change = -1
  arr[1..-2].each_with_index do |n, index|
    if (n <=> arr[index + 2]) != status
      change = index + 1
      status = -status
    end
  end
  change
end
   