# Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('*') 
# between each two even numbers in str. For example: if str is 4546793 the output should be 454*67-9-3. Don't 
# count zero as an odd or even number. 

def DashInsertII(num)
  evens = %w[2 4 6 8]
  if num.to_i < 11
    return num
  end
  
  str = num.to_s
  arr = str.split("")
  idx = 1
  while idx < str.length #skip first digit because it has no prev digit
    if str[idx - 1].chr.to_i.odd? && str[idx].chr.to_i.odd?
      arr[idx] = "-" + str[idx].chr
    elsif evens.include?(str[idx - 1].chr) && evens.include?(str[idx].chr)
      arr[idx] = "*" + str[idx].chr
    end
    idx += 1
    
  end

  arr.join("")       
end
   