function LetterChanges(str) { 
  var result = "";
  for (var i = 0, length = str.length; i < length; i++) {
    if (/[a-zA-Z]/.test(str[i])) {
      var current_ascii = str.charCodeAt(i),
      	  current_letter = String.fromCharCode(current_ascii + 1);
      
      if (current_letter === "aa" || current_letter === "AA") {
        current_letter = "A";
      } else if (/[aeiou]/.test(current_letter)) {
        current_letter = current_letter.toUpperCase();
      }
      
  	  result += current_letter;
    } else {
      result += str[i];
    }
  }
  return result;         
}