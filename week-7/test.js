// var totalSeconds = 391;
// var minutes = Math.floor(totalSeconds / 60);
// var seconds = totalSeconds % 60;

// console.log(totalSeconds + " is " + minutes + " minutes and " + seconds + " seconds");


var landscape = function() {
  var result = "";
  var flat = function(size) {
    for (var count = 0; count < size; count++)
      result += "_";
  };
  var mountain = function(size) {
    result += "/";
    for (var count = 0; count < size; count++)
      result += "'";
    result += "\\";
  };

  flat(3);
  mountain(4);
  flat(6);
  mountain(1);
  flat(1);
  return result;
};

console.log(landscape());
// → ___/''''\______/'\_

function square(x) {
  return x * x;
}