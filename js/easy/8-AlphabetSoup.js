function AlphabetSoup(str) { 
  var strArr = str.toLowerCase().split(""),
      dict = {},
      alpha = "abcdefghijklmnopqrstuvwxyz".split(""),
      res = [];
  for (var i = 0, len = strArr.length; i < len; i++) {
    dict[strArr[i]] = dict[strArr[i]] + 1 || 1;
  }
  for (var j = 0, leng = alpha.length; j < leng; j++) {
    var times = dict[alpha[j]];
    while (times > 0) { 
    	res.push(alpha[j]);
        times -= 1;
    }
  }
  return res.join("");
}


// OR 
//function AlphabetSoup(str) {
//  return str.split("").sort().join("")
//}