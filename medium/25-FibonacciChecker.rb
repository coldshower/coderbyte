# Have the function FibonacciChecker(num) return the string yes if the number given is part 
# of the Fibonacci sequence. This sequence is defined by: Fn = Fn-1 + Fn-2, which means to find 
# Fn you add the previous two numbers up. The first two numbers are 0 and 1, 
# then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci sequence, return the string no. 

def FibonacciChecker(num)
  t1, t2 = 0, 1
  t3 = t1 + t2
  
  while t3 < num
    t1 = t2
    t2 = t3
    t3 = t1 + t2
    if t3 == num
      return "yes"
    end
  end
  "no"
end

         
   