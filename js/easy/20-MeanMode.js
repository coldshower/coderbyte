function MeanMode(arr) { 
  var mean = 0,
      mode,
      hash = {},
      max = 1;
  
  for (var i = 0, len = arr.length; i < len; i++){
    var current = arr[i];
    mean += current;
    hash[current] = hash[current] + 1 || 1;
    if (hash[current] > max){
      max = hash[current];
      mode = current;
    }
  }
  
  mean = mean / arr.length;
  
  if (mean === mode){
    return 1;
  } else {
    return 0;   
  }
}