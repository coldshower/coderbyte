function ABCheck(str) { 
  var mark = false;
  for (var i = 0, len = str.length; i < len; i++) {
    if (str[i] === "a") {
      if ( str[i - 4] === "b" || str[i + 4] === "b" ) {
        mark = true;
      }
    }
  }
  return mark;        
}