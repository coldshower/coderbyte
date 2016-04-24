function ExOh(str) { 
  var xs = 0,
      os = 0;
  for (var i = 0, len = str.length; i < len; i++) {
    if (str[i] === "x") {
      xs += 1;
    } else if (str[i] === "o") {
      os += 1;
    }
  }
  
  if (xs === os) {
    return true
  } else {
    return false
  }
}
   