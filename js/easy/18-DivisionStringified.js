function DivisionStringified(num1,num2) { 
  var quotient = Math.round(num1 / num2).toString();
      result = "";
  var length = quotient.length;
  var head = length % 3,
      i = 0;
  
  result += quotient.slice(0, head);
  i += (head);
  
  while (i < length){
    if (head > 0) {
      result += ",";
    }
    result += quotient.slice(i, i + 3);
    i += 3;
  }
  return result;
}