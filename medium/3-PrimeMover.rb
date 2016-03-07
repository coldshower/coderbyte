# Have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4. 
# For example: if num is 16 the output should be 53 as 53 is the 16th prime number. 

def prime?(num, stack)
  max_check = Math.sqrt(num).floor
  stack.each do |m|
    if m > max_check
      return true
    end
    if num % m == 0
      return false
    end
    true
  end
end

def PrimeMover(num)
  stack = [2, 3, 5]
  current = 5
  count = 3
  until count > num
    current += 2
    if prime?(current, stack) 
      count += 1
      stack << current
    end

    current += 4
    if prime?(current, stack)
      count += 1
      stack << current  
    end
  end
  stack[num - 1]
end
  
   
   