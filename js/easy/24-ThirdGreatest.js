function ThirdGreatest(strArr) {  
  var first, second, third;
  for (var i = 0, len = strArr.length; i < len; i++){
    if (first === undefined || strArr[i].length > strArr[first].length){
      third = second;
      second = first;
      first = i;
    } else if (second === undefined || strArr[i].length > strArr[second].length){
      third = second;
      second = i;
    } else if (third === undefined || strArr[i].length > strArr[third].length){
      third = i;
    }
  }
  return strArr[third]; 
}