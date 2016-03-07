# Have the function LetterCount(str) take the str parameter being passed and return the 
# first word with the greatest number of repeated letters. For example: "Today, is the 
# greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes 
# before ever which also has 2 e's. If there are no words with repeating letters return -1. 
# Words will be separated by spaces. 

def LetterCount(str)
  str1 = str.split(" ")
  counts = []
  str1.each do |word|
    hash1 = word.downcase.split("").inject(Hash.new(0)) do |hash, key|
      hash[key] += 1
      hash
    end
    counts << hash1.values.max
  end
  if counts.max == 1
    return -1
  else
    idx = counts.index(counts.max)
    return str1[idx]
  end
end
   