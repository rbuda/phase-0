// JavaScript Olympics

// I paired [with Kenton Lin] on this challenge.

// This challenge took me [2.5] hours.

// Release 1: Bulk up: Add properties to Objects

var athletes = [{name: "Pau Gasol", sport: "Olympics"}, {name: "Sarah Hughes", sport: "Ladies Singles"}];

function events(array) {
  for (var i = 0; i < array.length; i++) {
    athletes[i].win = function() {
       console.log(this.name + " won the " + this.sport);
    }
  }
}

events(athletes);
athletes[1].win();

// Would it make more sense to have win be defined as a function expression or a function declaration? We made it a declaration so we could call on it with the array arguments.  

// Release 2: Reverse A String

function reverseString(r){
    var s = '';
    for(var i = r.length - 1; i >= 0; i--){
    s += r[i];
    }
    return(s);
}

console.log(reverseString('hello'));

function reverse_a_string(word) {
  return word.split("").reverse().join("");
}

// Release 3: 2, 4, 6 ,8! Who do we appreciate?

var array = [1,3,2,4,5,6]

function evens(array) {
  var ar = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      ar.push(array[i]);
    }    
  }
  return ar
}

console.log(evens(array));

function isEven(array) {
  var evenArray = array.filter(x => (x % 2 === 0));
  return evenArray;
}

console.log(isEven(array));

// Release 4: "We Built this City": Build a constructor function

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge? iterating through an array with JS, Functional Expresiions vs Declarations.

// What are constructor functions? like Ruby attrs.  They take in an arg and put the argument with the variable of the specific new instance of the obj.

// How are constructors different from Ruby classes (in your research)? Constructors are functions of JS.  JS has no classes - just functions.


