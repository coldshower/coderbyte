function NumberAddition(str) { 
  var total = 0,
      curr_num = "";
  
  for (var i = 0, len = str.length; i < len; i++){
    var elem = str[i];
    if ( (/[0-9]/).test(elem) ) {
      curr_num += elem;
      if ( !(/[0-9]/).test(str[i + 1]) ) {
        total += parseInt(curr_num);
        curr_num = "";
      }
    }
  }
  return total;
}