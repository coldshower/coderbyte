function LetterCountI(str) {
  var arr = str.split(" "),
      max_count = 1,
      max_word = -1;
  
  for (var word of arr) {
    var current = freq(word);
    if (current > max_count) {
      max_word = word;
      max_count = current
    }
  }
  return max_word;
}

function freq(word) {
  dict = {};
  max = null;
  for (var letter of word) {
    dict[letter] = dict[letter] + 1 || 1;
  }
  for (var d in dict){
    if (max === null || dict[d] > max) {
      max = dict[d];
    }
  }
  return max;
}