function LetterCapitalize(str) { 
  var arr = str.split(" ");
  for (var i = 0, length = arr.length; i < length; i++)
  	  arr[i] = capitalize(arr[i]);
  return arr.join(" ");         
}

function capitalize(str) {
  return str[0].toUpperCase() + str.slice(1);
}
