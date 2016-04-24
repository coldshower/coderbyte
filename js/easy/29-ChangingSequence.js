function ChangingSequence(arr) { 
  var increasing;
  for (var i = 0, len = arr.length - 1; i < len; i++){
    if (i === 0){
      increasing = (arr[i + 1] > arr[i]);
    }
    
    if (increasing !== (arr[i + 1] > arr[i])){
      return i;
    }
  }
  return -1;    
}
