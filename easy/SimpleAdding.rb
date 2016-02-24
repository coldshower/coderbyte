def SimpleAdding(n)
	total = 0
	current = 1
	while current >= n
		total += current
		current += 1
	end
	total
end

#plan
#1.create a total variable 
#2.iterate from 1 all the way to n
#3.each iteration, add it to total