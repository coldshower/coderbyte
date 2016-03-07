# Have the function DashInsert(str) insert dashes ('-') between each two odd numbers in str. For example: 
# if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 

def DashInsert(str)
  arr = str.split("")
  prev_digit = arr[0].to_i
  arr1 = arr[1..-1].reduce([arr[0]]) do |result, current|
    if prev_digit.odd? && current.to_i.odd?
      result << "-#{current}"
    else
      result << current
    end
    prev_digit = current.to_i
    result    
  end
  arr1.join("")
end