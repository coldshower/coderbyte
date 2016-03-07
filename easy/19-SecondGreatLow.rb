# Have the function SecondGreatLow(arr) take the array of numbers stored in arr and return the second lowest 
# and second greatest numbers, respectively, separated by a space. For example: if arr contains [7, 7, 12, 98, 106] 
# the output should be 12 98. The array will not be empty and will contain at least 2 numbers. It can get tricky if 
# there's just two numbers! 

def secondgreat(arr)
  if arr[0] > arr[1] 
    max, second_max = arr[0], arr[1]
  else
    max, second_max = arr[1], arr[0]
  end
  
  arr[2..-1].each do |n|
    if n > max
      second_max = max
      max = n
    else
      if n > second_max
        second_max = n
      end
    end
  end
  second_max
end

def secondlow(arr)
  if arr[0] < arr[1]
    least, second_least = arr[0], arr[1]
  else
    least, second_least = arr[1], arr[0]
  end
  
  arr[2..-1].each do |n|
    if n < least
      second_least = least
      least = n
    else
      if n < second_least
        second_least = n
      end
    end
  end
  second_least
end

def SecondGreatLow(arr)
  "#{secondlow(arr)} #{secondgreat(arr)}"
end