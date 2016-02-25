def TimeConvert(num)
	hours = num / 60
	mins = num % 60
	"#{hours}:#{mins}"
end

#plan
#1. hours = num / 60
#2. minutes = num % 60
#3. return "#{hours}:#{minutes}"