// Object-Literal Basics iin JavaScript
// var phase0 = {
// 	prop1: 1,
// 	prop2: "string",
// 	prop3: false,
// 	prop4: function() {
// 		return "prop4 is the best out there."
// 	},
// };

// for (var i in phase0) {
// 	if (phase0.hasOwnProperty(i)) {
// 		console.log(phase0[i])

// 	}

// }

// var phase1 = {
// 	valuableInfo: phase0.prop2

// };

// phase1.valuableInfo = "super cool programming stuff"

// console.log(phase1.valuableInfo)
// console.log(phase0.prop2)

// dot notation vs bracket notation

var simpleObj = {
	key1: "This ",
	key2: "is ",
	key3: "awesome!",
};

// console.log(simpleObj.key1 + simpleObj.key2 + simpleObj.key3)
// console.log(simpleObj[key1] + simpleObj[key2] + simpleObj[key3]) doesn't work.  bracket notation expects a "string"

var output = ""

for (i = 1; i < 4; i++) {
	output += (simpleObj["key" + i])
} 

console.log(output)

