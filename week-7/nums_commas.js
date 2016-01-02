// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Peter Lowe.

// Pseudocode
// input: a large number
// output: a string representing the number with commas.
// seperate number into an array
// Reverse that array
// Push each element from the reversed array into a new array inserting a comma after each 3.
// reverse new array and convert it to a string. 
  


// Initial Solution
function seperateComma(num){
 var num_str = num.toString();
  var num_arr = num_str.split("");
   var arr_reverse = num_arr.reverse();
 var result = []
 for (var i=0 ; i < arr_reverse.length ; i++) {
   if (i % 3 == 0){
     result.push(",");
   result.push(arr_reverse[i]);}
   else
     result.push(arr_reverse[i]);
   
 }
  result = result.reverse();
  result.pop();
 // result.join("");
  return(result.join(""))
}

console.log(seperateComma(1000000573475300000))



// Refactored Solution

function seperateComma(num){

  var num_arr = num.toString().split("").reverse();
   
 var result = []
 for (var i=0 ; i < num_arr.length ; i++) {
   if (i % 3 == 0){
     result.push(",");
     result.push(num_arr[i]);
   }
   else
     result.push(num_arr[i]);
   
 }
  result.reverse().pop();
 
  return(result.join(""))
}

console.log(seperateComma(1000000573475300000))



// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
-Not really.  We talked about it and we both saw how to solve it the same way which was mostly the same say I solved it last time.

What did you learn about iterating over arrays in JavaScript?
-Seems instead of fancy iterators like .each you just start a loop and go for it.

What was different about solving this problem in JavaScript?
-Before I iterated through my array 3 elements at a time, this time only 1.

What built-in methods did you find to incorporate in your refactored solution?
-None.  But we found split for our initial solution.  The others we just needed the syntax.

*/