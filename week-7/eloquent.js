// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var first = "First string in JavaScript!"
// console.log(first)

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle:
// for (var triangle = '#'; triangle <= '#######'; triangle += '#')
// 	console.log(triangle);

// FizzBuzz:

// for (var number = 1; number <= 100; number++) {
//  	if (number % 5 == 0 && number % 3 == 0)
// 		console.log("FizzBuzz");
// 	else if (number % 3 == 0)
// 		console.log("Fizz");
// 	else if (number % 5 == 0) 
// 		console.log("Buzz"); 
// 	else 
// 		console.log(number);
// }

// Favorite Food:
// (prompt('What\'s your favorite food?'));
// alert('That\'s mine too!');

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



// Introduction (Links to an external site.)
// Did you learn anything new about JavaScript or programming in general? I didn't know that the name is derived from a marketing play on Java's popularity.
// Are there any concepts you feel uncomfortable with? Not yet.

// Ch. 1: Values, Types, and Operators (Links to an external site.)
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.  Similarities = [nil, ==]     Differences = [type coercion, NaN, ===]

// Ch. 2: Program Structure (Links to an external site.)
// What is an expression? A fragment of code that produces a value.
// What is the purpose of semicolons in JavaScript? Are they always required? It separates statements.  Not always required but let's program know you're starting a new bit or line of code.
// What causes a variable to return undefined? when the user asks for a value of a variable that's not assigned to anything.
// Write your own variable and do something to it in the eloquent.js file. 
// What does console.log do and when would you use it? What Ruby method(s) is this similar to? console.log writes what is in the ()'s when the file is called in the cmd prompt.  It is similar to puts in ruby.
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in theChrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// Describe while and for loops: while is when a condition in ()'s is true do what is listed in its' {}'s.  for follows a pattern in JS.  It is coded like - for a variable equal to this, as long as the var meets this condition, do this to the variable while doing what is in the {}'s each time until the var meets the condition.
// What other similarities or differences between Ruby and JavaScript did you notice in this section? Semicolons, spacing, variables always start with var.
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

// Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
// What are the differences between local and global variables in JavaScript? local only have a value tied to them within their function, are newly created everytime the function is called.  Global are accessed anywhere in the program, can even be accessed with functions as long as function doesn't have a local var stated.  
// When should you use functions? If you want your code to do something and give a result.  Functions are used most of the time in JS.
// What is a function declaration? modified way of setting a function and a variable within it.  Instead of doing: var number = function(digit) you can do: function number(digit)
// Complete the minimum exercise in the eloquent.js file. 

// Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 
// Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// What is a JavaScript object with a name and value property similar to in Ruby?