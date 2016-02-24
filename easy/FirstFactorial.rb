def FirstFactorial(n)
	if n <= 1
		return 1
	else
		return n * FirstFactorial(n - 1)
	end
end