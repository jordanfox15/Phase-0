// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var jordan = 15;
console.log(jordan);
jordan = "fifteen";
console.log(jordan);


prompt("What is your favorite food?");
alert("Hey, that's my favorite food too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var hashtags = "#"; hashtags.length < 8; hashtags += "#")
	console.log(hashtags);


// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
	if (num1 < num2)
		return num1;
	else
		return num2;
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Jordan",
	age: "38",
	favorite_foods: ["pizza", "hamburgers", "ice cream"],
	quirk: "Doctor Who shower curtain"
};

console.log(me)