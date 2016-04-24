function OffLineMinimum(strArr) { 
  var result = [],
      ints = [],
      passed_idx = [];
  
  for (var i = 0, len = strArr.length; i < len; i++){
      
    if ((/[0-9]+/).test(strArr[i])){
      ints.push(parseInt(strArr[i]));
    } else if (strArr[i] === "E"){
      var min = undefined;
      for (var j = 0; j < ints.length; j++){
        if (!passed_idx.includes(j) && (min === undefined || ints[j] < ints[min])){
          min = j;
        }
      }
      result.push(ints[min]);
      passed_idx.push(min);
    }
  }     
  return result.join(",");  
}