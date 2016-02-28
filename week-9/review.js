// Release 3: Initial Solution

// var food = ("fish eggs milk ham");
// var groceries = {};

// var createList = function(list) {
// 	var foodArray = food.split(" ");
// 	for(var i = 0; i < foodArray.length; i++){
// 		groceries[foodArray[i]] = 1;
// 	}
// 	console.log(groceries);
// }

// createList(food);

// var addItem = function(item) {
// 	groceries[item] = 1;
// 	console.log(groceries);
// }

// addItem("bread");

// var deleteItem = function(item) {
// 	delete groceries[item]
// 	console.log(groceries);
// }

// deleteItem("ham");

// var updateList = function(item, quantity) {
// 	groceries[item] = quantity;
// 	console.log(groceries);
// }

// updateList("yogurt", 2);
// updateList("fish", 2);

// var prettyList = function(groceries) {
// 	for (item in groceries) {
// 		console.log(item + "......" + groceries[item]);
// 	}
// }

// prettyList(groceries);

// Release 4: Refactor

var food = ("fish eggs milk ham");
var groceries = {};
var createList = function(list) {
	var foodArray = food.split(" ");
	for(var i = 0; i < foodArray.length; i++){
		groceries[foodArray[i]] = 1;
	}
}

var addItem = function(item) {
	groceries[item] = 1;
}

var deleteItem = function(item) {
	delete groceries[item]
}

var updateList = function(item, quantity) {
	groceries[item] = quantity;
}

var prettyList = function(groceries) {
	console.log("Groceries:")
	console.log("-----------")
	for (item in groceries) {
		console.log(item + ": " + groceries[item]);
	}
	console.log("-----------")
}
createList(food);
addItem("bread");
deleteItem("ham");
updateList("yogurt", 2);
updateList("fish", 2);
prettyList(groceries);

// Release 5: Reflect

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I spent a good amount of time starting over with JavaScript this week.  Feel the lightbulb came on and am confident going into Monday.

// What was the most difficult part of this challenge? Getting the groceries list object created from a string.  Was going to just start off with the list in an array but thought it was kind of cheating.

// Did an array or object make more sense to use and why? Object.  Bracket notation was easier to add the array into and automatically assign each a value of 1.  Intially had a value of zero but didn't make sense to have something on the lise and not "buy it".
