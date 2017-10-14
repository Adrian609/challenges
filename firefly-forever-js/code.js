// Drew Andre - Launch Academy Ignition weed #5: JavaScript - FireFLy Forever
// 8.13.17

let crewMembers = ["River", "Zoe", "Wash", "Mal", "Book", "Jayne"];
var numberOfCharacters = crewMembers.length;

// convert all crewMembers to lowercase and store in a separate array
// this is for easier array indexing with the given user input
var crewMembersLowercase = [];
for (var i = 0; i < crewMembers.length; i++) {
    crewMembersLowercase.push(crewMembers[i].toLowerCase());
}

var quoteText; // variable for storing either 'quote' or 'quotes' depending on # of quotes returned
var numberOfQuotes; // variable for storing number of quotes

let quotes = [
  [ // river
    "No power in the Verse can stop me.",
    "I can kill you with my brain.",
    "My food is problematic.",
    "This whole conclusion is fallacious.",
    "Now they see the sky and they remember what they are."
  ],
  [ // zoe
    "Sorry, sir. Didn't mean to enjoy the moment.",
    "Is there any way I'm gonna get out of this with honor and dignity?",
    "If it moves, shoot it.",
    "I ain't so afraid of losing something that I ain't gonna try to have it.",
    "Big damn heroes.",
    "We crashing again?"
  ],
  [ // wash
    "I am a leaf on the wind. Watch how I soar.",
    "Oh God, oh God, we're all going to die?"
  ],
  [ // mal
    "Did something just fly off my gorram ship?",
    "We've done the impossible, and that makes us mighty.",
    "We are just too pretty for God to let us die.",
    "Morbid and creepifying, I got no problem with, long as she does it quiet-like.",
    "I swear, by my pretty floral bonnet, I will end you."
  ],
  [ // book
    "I don't care what you believe in, just believe in it.",
    "A government is a body of people, usually, notably ungoverned.",
    "You don't fix faith, River. It fixes you.",
    "If you can't do something smart, do something right."
  ],
  [ // jayne
    "We're gonna explode? I don't wanna explode!",
    "Let's be bad guys.",
    "You don't pay me to talk pretty.",
    "You guys had a riot? On account o' me? My very own riot?",
    "Aw, hell, if I had wanted schooling, I would have gone to school.",
    "Not as deceiving as a low down, dirty... deceiver."
  ]
];


// Your code here

// 1. How many quotes does Mal have? Write a function that takes the name of a character as an argument, and returns the number of quotes that character has. Then, call that function for `"Mal"`
var character = 'Mal';
let howManyQuotes = (name) => {
  var index = crewMembersLowercase.indexOf(name.toLowerCase()); // convert user input to lowercase and find the index of the character in crewMembers
  var numberOfQuotes = quotes[index].length; // calculate how many quotes that character has
  if (numberOfQuotes == 1) { quoteText = ' quote!';} else { quoteText = ' quotes!'; } // decide whether to use singular or plural grammar
  console.log(crewMembers[index] + ' has ' + quotes[index].length + quoteText); // ex. log: 'Wash has 2 quotes!'
  return numberOfQuotes; // return number of quotes from that character
}; // END quoteNumberCalculator
howManyQuotes(character); // call the function!


// 2. Which character said `"I am a leaf on the wind. Watch how I soar."`? Write a function that takes a quote as an argument and returns the name of the character who said that quote.
var testQuote = "I am a leaf on the wind. Watch how I soar.";
var foundQuote;
let whoSaidDat = (quoteString) => {
  for(var i = 0; i < numberOfCharacters; i++) {
    if (quotes[i].indexOf(quoteString) != -1) {
      console.log('Who said \'' + quoteString + '\'? ' + crewMembers[i] + ' said it!');
      foundQuote = true;
    }
  }
  if(!foundQuote) {
    console.log('No one said that! :(' );
  } else {
    return crewMembers[i];
  }
};
whoSaidDat(testQuote);

// 3. What is River's longest quote? Write a function that takes the name of a character and returns the longest quote by that character.
character = 'River';
let longestQuote = (name) => {
  var index = crewMembersLowercase.indexOf(name.toLowerCase()); // convert user input to lowercase and find the index of the character in crewMembers
  // longestQuote function REFERENCE: https://stackoverflow.com/questions/6521245/finding-longest-string-in-array
  var length = quotes[index].sort(function (a, b) { return b.length - a.length; })[0]; // sort the list by length and return the first (longest) item
  console.log(crewMembers[index] + '\'s longest quote: ' + '\'' + length + '\''); // ex. log: 'Wash's longest quote: *longest quote here*'
  return length; // return the longest quote from that character
}; // END longestQuote
longestQuote(character); // call the function!

// 4. What is Zoe's average quote length? Write a function that takes the name of a character and returns the average quote length for that character.
character = 'Zoe';
let averageQuoteLength = (name) => {

  var index = crewMembersLowercase.indexOf(name.toLowerCase()); // convert user input to lowercase and find the index of the character in crewMembers
  var characterQuoteLengthSum = 0;

  quotes[index].forEach(function(i) {
    characterQuoteLengthSum += i.length; // sort the list by length and return the first (longest) item
  });

  var average = characterQuoteLengthSum / (quotes[index].length);
  average = average.toFixed(1);
  console.log(crewMembers[index] + '\'s average quote length is ' + average + ' characters long.'); // ex. log: 'Wash's average quote length is x characters.'

  return average; // return the average quote size from that character

}; // END averageQuoteLength
averageQuoteLength(character); // call the function!
