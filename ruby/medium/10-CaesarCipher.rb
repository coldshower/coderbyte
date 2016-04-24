# Have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher 
# shift on it using the num parameter as the shifting number. A Caesar Cipher works by shifting 
# each letter in the string N places down in the alphabet (in this case N will be num). Punctuation, 
# spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" 
# and num is 2 the output should be "Ecguct Ekrjgt".

def CaesarCipher(str,num)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M O P Q R S T U V W X Y Z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  
  str1 = str.split("")
  
  str1.map do |letter|
    if alphabet.include?(letter)
      new_letter_index = alphabet.index(letter) + num
      alphabet[new_letter_index]
    else
      letter
    end
  end.join("")
         
end
   