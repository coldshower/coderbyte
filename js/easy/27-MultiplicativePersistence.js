function MultiplicativePersistence(num) { 
  var loops = 0,
      str = "" + num;
  while (str.length > 1){
    var arr = str.split(""),
        total = 1;
    for (var i = 0, len = arr.length; i < len; i++){
      total *= arr[i];
    }
    str = "" + total;
    loops += 1;
  }
  return loops;   
}
   