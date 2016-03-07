# Have the function PermutationStep(num) take the num parameter being passed and return the next 
# number greater than num using the same digits. For example: if num is 123 return 132, 
# if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999). 

def PermutationStep(num)
  arr = num.to_s.split("")
  candidate = arr.permutation(arr.length).select {|n| n.join("").to_i > num}.min
  if candidate
    candidate.join("")
  else
    -1
  end
end
         
   