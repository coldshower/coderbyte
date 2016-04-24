# Have the function StringScramble(str1,str2) take both parameters being passed and return 
# the string true if a portion of str1 characters can be rearranged to match str2, otherwise 
# return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should 
# return true. Punctuation and symbols will not be entered with the parameters. 

def StringScramble(str1,str2)
  hash1 = str1.delete(" ").split("").inject(Hash.new(0)) {|hash, letter| hash[letter] += 1; hash}
  hash2 = str2.delete(" ").split("").inject(Hash.new(0)) {|hash, letter| hash[letter] += 1; hash}
    
  hash2.each_pair do |key, value|
    if hash1[key] < value
      return false
    end
  end  
  true
end
   
   