function OverlappingRanges(arr) { 
  var count = 0,
      range1 = [arr[0], arr[1], arr[1] - arr[0]],
      range2 = [arr[2], arr[3], arr[3] - arr[2]],
      range_iter, range_not;
  
  
  if (range2[2] > range1[2]){
    range_iter = range1;
    range_not = range2;
  } else {
    range_iter = range2;
    range_not = range1;
  }
  for (var i = range_iter[0]; i <= range_iter[1]; i++){
    if (i >= range_not[0] && i <= range_not[1]){
      count += 1;
    }
  }
  
  return (count >= arr[4]);    
}
   