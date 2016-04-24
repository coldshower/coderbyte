function PowersofTwo(num) { 
  var n = num;
  if (n < 1) {
    return false;
  } else {
    while (n > 2){
      if (n % 2 > 0){
        return false;
      } else {
        n = n / 2;
      }
    }
  }
  return true;
}