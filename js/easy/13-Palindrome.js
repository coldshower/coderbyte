function Palindrome(str) { 
  var str2 = str.replace(/ /g, "");
  var tmp = str2.split("").reverse().join("");
  return str2 === tmp;
}