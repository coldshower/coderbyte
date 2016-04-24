function CountingMinutesI(str) { 
  var times = str.split("-");
  var time1 = convert(times[0]),
      time2 = convert(times[1]);
  
  if (time2 > time1) {
    return time2 - time1;
  } else {
    return 1440 - Math.abs(time2 - time1);
  }
}

function convert(str){
  var hours, minutes;
  var tmp = str.split(":");
  var hour_str = tmp[0];
  if (str.includes("am")){
    var hours = (hour_str === "12")? 0 : (parseInt(hour_str) * 60);
  } else {
    var hours = (hour_str === "12")? 720 : (parseInt(hour_str) + 12) * 60;
  }
  minutes = parseInt(tmp[1].substr(0,2));
  return hours + minutes;
}