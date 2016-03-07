# Have the function ArrayAdditionI(arr) take the array of numbers stored in arr and return the string true 
# if any combination of numbers in the array can be added up to equal the largest number in the array, 
# otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should 
# return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, 
# and may contain negative numbers. 

def ArrayAdditionI(arr)
	
    max = arr.max
    arr.delete(max)
    combinations = []
    (1..arr.length).each do |n|
        combinations += arr.combination(n).to_a
    end
    combinations.any? do |arr|
        arr.reduce(:+) == max
  
	end	
         
end