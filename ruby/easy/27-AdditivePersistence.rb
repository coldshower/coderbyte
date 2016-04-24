# Have the function AdditivePersistence(num) take the num parameter being passed which will always be a 
# positive integer and return its additive persistence which is the number of times you must add the digits 
# in num until you reach a single digit. For example: if num is 2718 then your program should return 2 
# because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

def AdditivePersistence(num)
  digits = num.to_s.split("").map(&:to_i)
  count = 0
    until digits.length == 1
        digits = digits.reduce(:+).to_s.split("").map(&:to_i)
        count += 1
    end
    count   
end