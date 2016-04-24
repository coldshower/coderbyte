function VowelCount(str) { 
  var vowels = "aeiou".split(""),
      count = 0;
  for (var i = 0, len = str.length; i < len; i++) {
    if ( vowels.includes(str[i]) ) {
      count += 1;
    }
  }
  return count;          
}