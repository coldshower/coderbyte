# Have the function PrimeChecker(num) take num and return 1 if any arrangement of num comes out to be 
# a prime number, otherwise return 0. For example: if num is 910, the output should be 1 because 910 
# can be arranged into 109 or 019, both of which are primes. 

def prime?(num)
  (2..(Math.sqrt(num).floor)).each do |m|
    if num % m == 0
      return false
    end
  end
  true
end

def PrimeChecker(num)
  arr = num.to_s.split("")
  length = arr.length
  if length < 2
    if prime?(num)
      return 1
    else
      return 0
    end
  end
  
  if arr.permutation(length).any? {|n| prime?(n.join("").to_i)}
    return 1
  else
    return 0
  end
end
         
   