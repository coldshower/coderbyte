# Have the function BinaryConverter(str) return the 
# decimal form of the binary value. For example: if 101 
# is passed return 5, or if 1000 is passed return 8. 

def BinaryConverter(str)
  digits = str.split("").map(&:to_i)
  current = digits[0]
  digits[1..-1].each do |d|
    current = current * 2 + d
  end
  current         
end
   