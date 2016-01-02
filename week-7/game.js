// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: To cast a spell using reagents
// Goals: To use proper spell on monster
// Characters: Hero
// Objects: Spellbook, Monster Compendium
// Functions: Monster Attack, Add Reagents

// Pseudocode
// Initialize Hero object with spellbook, monster compendium, an number of reagents
// Initialize spellbook with spells and number of reagents it uses
// Initialize Monster compendium with monsters and spell need to cast
// Create function monster attack which casts proper spell given monster
// Create function add reagents which adds more reagents to Hero

// Initial Code
var hero = {
	spellbook: {
		fireball: 3,
		magic_missle: 1,
		cone_of_cold: 2 
	},
	reagent: 10,
};

var monsterCompendium = {
	bugbear: "cone_of_cold",
	troll: "fireball",
	goblin: "magic_missle",
	dragon: "fireball",
};

function monsterAttack(monster) {
	if (hero.reagent - hero.spellbook[monsterCompendium[monster]] < 0) {
		console.log("Not enough reagents to cast spell. You have died.");}
	else {
		hero.reagent -= hero.spellbook[monsterCompendium[monster]];
		console.log("You have defeated the", monster);}
};

function addReagent(amount) {
	hero.reagent += amount;
};

monsterAttack("bugbear");
monsterAttack("troll");
monsterAttack("goblin");
monsterAttack("dragon");
addReagent(5);
monsterAttack("dragon");
monsterAttack("troll");
monsterAttack("goblin");

// Refactored Code






// Reflection
/*

What was the most difficult part of this challenge?
-Determining the proper way to store and access information in my objects.

What did you learn about creating objects and functions that interact with one another?
-You need to use square brackets to access objects to evaluate it sometimes and sometimes you don't.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
-No.

How can you access and manipulate properties of objects?
-Either with the .property or with square brackets [property]

*/