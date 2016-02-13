// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var first = "First string in JavaScript!"
console.log(first)

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle:
for (var triangle = '#'; triangle <= '#######'; triangle += '#')
	console.log(triangle);

// FizzBuzz:

for (var number = 1; number <= 100; number++) {
 	if (number % 5 == 0 && number % 3 == 0)
		console.log("FizzBuzz");
	else if (number % 3 == 0)
		console.log("Fizz");
	else if (number % 5 == 0) 
		console.log("Buzz"); 
	else 
		console.log(number);
}

// Favorite Food:
(prompt('What\'s your favorite food?'));
alert('That\'s mine too!');

// Functions

// Complete the `minimum` exercise.

function min(low, high) {
	if (low < high)
		return low
	else if (high > low)
		return high
	else (high == low)
		return 'They equal each other!'
}

console.log(min(10,10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
	name: "Ryan Nebuda",
	age: 30,
	favoriteFoods: ["pizza", "baked ziti", "bacon"],
	quirk: "I enjoy washing dishes",
};

console.log(me.name);
console.log(me.age);
console.log(me.favoriteFoods);
console.log(me.quirk);
console.log(me.favoriteFoods[1]);
