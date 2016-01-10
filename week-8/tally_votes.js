// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Kurt Schlueter
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution
/*
var votesPropertiesArray = Object.keys(votes);
console.log(votesPropertiesArray);
for (var x = 0; x < votesPropertiesArray.length; x++) {

  var positionsPropertiesArray = Object.keys(votes[votesPropertiesArray[x]]);
  console.log(positionsPropertiesArray);
  for (var y = 0; y < positionsPropertiesArray.length; y++) {
    var position = positionsPropertiesArray[y];
    var name = votes[votesPropertiesArray[x]][positionsPropertiesArray[y]];

    if (isNaN(voteCount[position][name]) == true){
      voteCount[position][name] = 1
    }
    else {
      voteCount[position][name] = voteCount[position][name] + 1;
    }
  }
}

console.log(voteCount)


var presMaxNum = 0;
var presMaxName = 0;
var viceMaxNum = 0;
var viceMaxName = 0;
var secMaxNum = 0;
var secMaxName = 0;
var treMaxNum = 0;
var treMaxName = 0;

var positionsArray = Object.keys(voteCount);
for (x = 0; x < positionsArray.length; x++) {

  var namesArray = Object.keys(voteCount[positionsArray[x]]);
  for (y = 0; y < positionsPropertiesArray.length; y++) {

      var position2 = positionsArray[x];
      var name2 = namesArray[y];

        console.log(position2)
        console.log(name2)
        console.log(voteCount[position2][name2])
        console.log('\n')

      // if president and larger than max
      if (x==0 && voteCount[position2][name2] > presMaxNum){
        presMaxNum = voteCount[position2][name2];
        presMaxName = name2;


      }

      // if vice president and larger than max
      if (x==1 && voteCount[position2][name2] > viceMaxNum){
        viceMaxNum = voteCount[position2][name2];
        viceMaxName = name2;
      }

      // if secretary and larger than max
      if (x==2 && voteCount[position2][name2] > secMaxNum){
        secMaxNum = voteCount[position2][name2];
        secMaxName = name2;
      }

      // if treasurer and larger than max
      if (x==3 && voteCount[position2][name2] > treMaxNum){
        treMaxNum = voteCount[position2][name2];
        treMaxName = name2;
      }
  }
}

officers.president = presMaxName;
officers.vicePresident = viceMaxName;
officers.secretary = secMaxName;
officers.treasurer = treMaxName;




*/
// __________________________________________
// Refactored Solution

for (var voter in votes){

  for (var title in votes[voter]){

    if (!voteCount[title].hasOwnProperty(votes[voter][title]))
      voteCount[title][votes[voter][title]] = 1;
    
    else
      voteCount[title][votes[voter][title]] += 1;
  };
};

for (var titleToo in voteCount){

  for (var name in voteCount[titleToo]){
    
    if (officers[titleToo] == undefined){
      officers[titleToo] = name;
      var voteTotal = voteCount[titleToo][name];}
    
    else{

      if (voteCount[titleToo][name] > voteTotal){
        officers[titleToo] = name;
        voteTotal = voteCount[titleToo][name];}
    };
  };
};

// __________________________________________
// Reflection
/*

What did you learn about iterating over nested objects in JavaScript?
-You need multiple loops and to make sure to access everything correctly.

Were you able to find useful methods to help you with this?
-Yes and no.  The hasOwnProperty method was very useful but we didn't use it for iterating.

What concepts were solidified in the process of working through this challenge?
-The for in loop.  How to properly access elements in nested data structures.

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)