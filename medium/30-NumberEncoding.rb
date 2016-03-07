# Have the function NumberEncoding(str) take the str parameter and encode the message according to the 
# following rule: encode every letter into its corresponding numbered position in the alphabet. Symbols 
# and spaces will also be used in the input. For example: if str is "af5c a#!" then your program should 
# return 1653 1#!. 

def NumberEncoding(str)
  alpha = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  arr = str.split("")
  arr.map do |letter|
    if alpha.include?(letter)
      alpha.index(letter) + 1
    else
      letter
    end
  end.join("")
end
   