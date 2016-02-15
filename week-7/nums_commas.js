// I worked on this challenge with: Rokas Simonkis

// Pseudocode
/*
1. Create a function called seperate comma.
2. Function will take an integer
3. Count the number of digits in integer
4. Reverse the integers
5. Push integers into an array
6. Run a loop either splitting or going after every third integer
7. Add a comma after every three integers. 
8. Join the numbers together
9. Reverse them back
10. Return comma seperated integer. 

*/

// Initial Solution
  
function separateComma(number) {
  var num = number.toString().split("");
  var length = num.length;
  for (var x = length - 3; x > 0; x -= 3) {
    num.splice( x, 0, ",");
  }
  console.log(num.join(""));
}

console.log(separateComma(10000000));

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently? substituting vocab around a lot.  Error messages are much harder to diagnose.

// What did you learn about iterating over arrays in JavaScript? iterating is different as it needs 3 different sections to be filled in the for method ()'s.

// What was different about solving this problem in JavaScript? the splice method - telling it which index, how many and what to put in.

// What built-in methods did you find to incorporate in your refactored solution? splice, length, split, join.  Very similar to Ruby.

