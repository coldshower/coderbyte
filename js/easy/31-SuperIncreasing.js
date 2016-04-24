function Superincreasing(arr) { 
  var pending = 0;
  for (var i = 0, len = arr.length; i < len; i++){
    if (arr[i] <= pending){
      return "false";
    } 
    pending += arr[i];
  }
  return "true";  
}