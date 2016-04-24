function SecondGreatLow(arr) { 
  var lowest = null,
      highest = null,
      secondlow = null,
      secondhigh = null;
  
  for (var i = 0, len = arr.length; i < len; i++){
    if (i === 0) {
      lowest = arr[i];
      highest = arr[i];
    }
    
    if (arr[i] > highest) {
      secondhigh = highest;
      highest = arr[i];
    } else if (arr[i] < highest && (secondhigh === null || arr[i] > secondhigh)){
      secondhigh = arr[i];
    }
    
    if (arr[i] < lowest) {
      secondlow = lowest;
      lowest = arr[i];
    } else if (arr[i] > lowest && (secondlow === null || arr[i] < secondlow)){
      secondlow = arr[i];
    }
  }
  
  if (secondlow === null && secondhigh === null){
    return lowest + " " + highest;
  } else {
    return secondlow + " " + secondhigh;
  }  
}