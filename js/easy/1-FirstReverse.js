function FirstReverse(str) { 
  var result = "",
      length = (str.length - 1);
  for (var i = length; i >= 0; i--)
    result += str[i];
  return result;         
}