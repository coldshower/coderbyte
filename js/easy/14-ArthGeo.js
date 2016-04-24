function ArithGeo(arr) { 
  var arith = true,
      geo = true;
  var arith_size = null,
      geo_size = null;
  
  for (var i = 0, len = arr.length; i < (len - 1); i++) {
    if (arith_size === null) {
      arith_size = arr[i + 1] - arr[i];
      geo_size = arr[i + 1] / arr[i];
    } else {
      if (arith_size !== (arr[i + 1] - arr[i])){
        arith = false;
      }
      
      if (geo_size !== (arr[i + 1] / arr[i])){
        geo = false;
      }
    }
    
    if (arith === false && geo === false){
      return -1;
    }
  }
 
  if (arith === true){
    return "Arithmetic";
  } else if (geo === true){
    return "Geometric";
  }
}