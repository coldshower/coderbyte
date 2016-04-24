function TimeConvert(num) { 
  var hours = Math.floor(num / 60),
      mins = num % 60;
  return hours + ":" + mins;
}