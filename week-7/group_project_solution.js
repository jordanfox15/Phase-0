/*
A.
	1. Create a function with the name of "sum" that accepts an array of integers as an argument

	2. Add together all the integers of the array to get a total

	3. Return the total

B.
	1. Create a function with the name of "mean" that accepts the same arrays as arguments

	2. Add together all the integers of the array to get a total

	3. Divide the total by the number of elements to get the average

	4. Return the average

C.
	1. Create a function with the name of "median" that accepts the same arrays as arguments

	2. Order the array from smallest integer to largest

	3. If the number of elements in the array is odd
		a. Return the element at the midpoint

	4. If the number of elements in the array is even
		a. Add together the 2 elements at the midpoint
		b. Divide total by 2 to get the average
		c. Return the average
*/


function sum(integers) {
  var total = 0
  for (var i = 0; i < integers.length; i++) {
    total += integers[i];
  };
  return total;
};
/*
As a user, I want to create a function called "sum" which will take a group of numbers, add them all together, and give me back the total.
*/

function mean(integers) {
  var total = 0
  for (var i = 0; i < integers.length; i++) {
    total += integers[i];
  };
  return total/integers.length;
};
/*
As a user, I want to create a function called "mean" which will take a group of numbers and give me back the average of them all.
*/

function median(integers) {
  integers.sort(function(a,b) {return a - b});

  var middle = Math.floor(integers.length / 2);

  if (integers.length % 2 !== 0) {
    return integers[middle];
  };
  return (integers[middle - 1] + integers[middle]) / 2.0;
};
/*
As a user, I want to create a function called "median" which will take a group of numbers and give me back the mean of the group.
*/