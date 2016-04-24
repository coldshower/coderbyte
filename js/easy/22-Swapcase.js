function SwapCase(str) { 
  var result = "";
  for (var i = 0, len = str.length; i < len; i++){
    if ((/[a-zA-Z]/).test(str[i])) {
      if (str[i] === str[i].toUpperCase()){
        result += str[i].toLowerCase();
      } else {
        result += str[i].toUpperCase();
      }
    } else {
      result += str[i];
    }
  }
  return result;
}