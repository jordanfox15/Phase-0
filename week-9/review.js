/*Psuedocode

prompt user for list items
create a function to make an object from list
create a function to add new item
create a function to remove an item
create a function to undate an item
create a function to print list to screen
create loop to run list until finished

*/
function createList(list){
	var tempObj = {};
	var tempArr = list.split(" ");
	for (var i = 0; i < tempArr.length; i++){
		tempObj[tempArr[i]] = 1;
	}
	return tempObj;
}

function addItem(oldList, item, quantity){
	oldList[item] = quantity;
	return oldList;
}

function removeItem(oldList, item){
	delete oldList[item];
	return oldList;
}

function updateQuan(oldList, item, quantity){
	oldList[item] = quantity;
	return oldList;
}

function printList(oldList){
	console.log("Your grocery list:");
	for (var item in oldList){
		console.log(item + " => " + oldList[item]);
	}
}


var initList = prompt("Welcome.  What items do you want to buy?");
var groceryList = createList(initList);
var action = "";

while (action != "end"){
	action = prompt("What action would you like to take?");
	if (action == "add"){
		var itemToAdd = prompt("What would you like to add?");
		var stringQuantity = prompt("How Many?");
		quantity = Number(stringQuantity);
		groceryList = addItem(groceryList, itemToAdd, quantity);
	}
	else if (action == "remove"){
		var remove = prompt("What would you like to remove?");
		groceryList = removeItem(groceryList, remove);
	}
	else if (action == "update"){
		var changeItem = prompt("What would you like to change?");
		var stringQuantity = prompt("How many would you like?");
		quantity = Number(stringQuantity);
		groceryList = updateQuan(groceryList, changeItem, quantity);
	}
	else if (action == "print"){
		printList(groceryList);
	}
}

/*

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
-How to pass info back and forth between functions.

What was the most difficult part of this challenge?
-Creating a loop to run the program until the user was finished without creating an infinite loop.

Did an array or object make more sense to use and why?
-Object because you needed to store not only the item you want to buy but how many of each item.  It is not a simple list so an array wouldn't work.

*/