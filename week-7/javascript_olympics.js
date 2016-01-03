 // JavaScript Olympics

// I paired [with: Khamla Phimmachack] on this challenge.

// This challenge took me [1] hours.


// Warm Up

var athl = ["Sahah Hughes", "Ladies' Singles", "Michael Phelps", "Freestyle"];


// Bulk Up
function win(athletes) {
  for (var i = 0; i < athletes.length; i += 2) {
    console.log(athletes[i], "won the", athletes[i + 1]);
}
}

win(athl)
// Jumble your words

function jumble(str) {
  var str_arr = str.split("").reverse();
  return str_arr.join("");
}

jumble("sdrawkcab")

// 2,4,6,8
function evenNums(array) {
  for (var i = 0; i < array.length; i++){
    if (array[i] % 2 == 0)
      console.log(array[i]);
  }
}

evenNums([1, 2, 3, 4, 5, 6]);


// "We built this city
function Athlete(){
  this.name = "Michael Phelps";
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Reflection
/*

What JavaScript knowledge did you solidify in this challenge?
-For loops.

What are constructor functions?
-Functions where you can initialize and define variables before an object is created.

How are constructors different from Ruby classes (in your research)?
-The functions/methods inside the constructor aren't separated like in ruby.  They are all written one after the other.

*/