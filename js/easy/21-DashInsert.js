function DashInsert(str) { 
  var result = "";
  for (var i = 0, len = str.length; i < len; i++){
    var current = str[i];
    if ((current % 2 > 0) && (str[i + 1] % 2 > 0)){
      result += (current + "-");
    } else {
      result += current;
    }
  }
  return result;        
}