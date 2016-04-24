function SimpleSymbols(str) { 
  for (var i = 0, length = str.length; i < length; i++) {
    if (/[a-zA-Z]/.test(str[i])){
      if (!(str[i-1] === "+" && str[i+1] === "+")){
        return false;
      }
    }
  }
  return true;
}