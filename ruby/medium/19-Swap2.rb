# Have the function SwapII(str) take the str parameter and swap the case of each character. Then, if a 
# letter is between two numbers (without separation), switch the places of the two numbers. 
# For example: if str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 

def swap(str)
  if str.upcase == str
    str.downcase
  else
    str.upcase
  end
end

def SwapII(str)
  arr = str.split("")
  length = str.length
  idx = 0
  prev_num_idx = false
  while idx < length
    current = str[idx].chr 
    if current =~ /[a-zA-Z]/
      arr[idx] = swap(current)
    elsif current =~ /[0-9]/
        if prev_num_idx
            arr[prev_num_idx], arr[idx] = str[idx].chr, str[prev_num_idx].chr
        else
            prev_num_idx = idx
        end
    elsif current =~ /s/
        prev_num_idx = false
    end
    idx += 1
  end
  arr.join("")
end
         
   