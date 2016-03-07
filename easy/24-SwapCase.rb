# Have the function SwapCase(str) take the str parameter and swap the case of each character. For example: 
# if str is "Hello World" the output should be hELLO wORLD. Let numbers and symbols stay the way they are. 

def SwapCase(str)
  str1 = str.split("")
  result = str1.map do |letter|
    if letter == letter.upcase
      letter.downcase
    else
      letter.upcase
    end
  end
  result.join("")         
end