# Have the function PrimeTime(num) take the num parameter being passed and return the string true if the 
# parameter is a prime number, otherwise return the string false. The range will be between 1 and 2^16. 

def PrimeTime(num)
  (2..(Math.sqrt(num).floor)).each do |factor|
    if num % factor == 0
      return false
    end
  end
  true
end
  
   
   