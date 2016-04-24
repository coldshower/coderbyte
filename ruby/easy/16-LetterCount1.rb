def LetterCountI(str)
  change = false
  max_count, max_idx = 1, 0
  arr = str.split(" ")
  arr.each_with_index do |word, idx|
    current = freq(word)
    if current > max_count
      max_idx = idx
      max_count = current
      change = true
    end
  end
  
  if change == false
    return -1
  else
    return arr[max_idx]
  end
end

def freq(str)
  arr = str.split("")
  hash1 = arr.reduce(Hash.new(0)) {|hash, elem| hash[elem] += 1; hash}
  hash1.values.max
end