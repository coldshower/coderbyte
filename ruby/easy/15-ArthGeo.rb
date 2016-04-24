# Have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" 
# if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If 
# the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference 
# between each of the numbers is consistent, where as in a geometric sequence, each term after the first is 
# multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. 
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

def ArthGeo(arr)
	arth?, geo? = true, true
	arth, geo = nil, nil
	idx = 0
	length = arr.length - 1
	while idx < length
		current_arth = arr[idx + 1] - arr[idx]
		current_geo = arr[idx + 1] / arr[idx]

		if arth == nil
			arth = current_arth
			geo = current_geo
		end

		if current_arth != arth
			arth? = false
		end

		if current_geo != geo
			geo? = false
		end

		idx += 1
	end

	if arth?
		return arth
	elsif geo?
		return geo
	else
		return -1
	end
end

#plan
#1. create two marker variables, arth? and geo? that start off as true
#2. during while iterating through the array, check if either holds up
#3. when one does not, change it from true to false
#4. at the end, if one of them is true, return it.
#5. if both are false, return -1

