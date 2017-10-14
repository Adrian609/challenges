## Getting Started

Open up the terminal and use the following instructions to get started.

```no-highlight
$ cd ~/challenges      
$ et get firefly-forever-js
$ cd firefly-forever-js
```

Open the `firefly-forever-js` **project folder** in your editor.

Open the `firefly-forever-js/index.html` file in your browser.

Open the Developer Console with `Command + Option + J`

## Instructions

Everyone knows that [Firefly](https://en.wikipedia.org/wiki/Firefly) is one of the best shows to ever air in the history of always.

Ezra, our Curriculum Coordinator, sometimes gets his Firefly quotes mixed up though, ("'I'm a lion on the wind, watch how I roar-' that's the quote, right?").

To help Ezra out we have created an array of some of the crew member names and a complex data structure with quotes.

One array contains crew names, and the other contains sets of quotes from the show. The index of each crew member corresponds to the index in which their quotes reside in the quotes array. For example, `crewMembers[0]` is `"River"` and her quotes are located at `quotes[0]`.

We're going answer Ezra's questions by writing javascript functions.

## Meeting Expectations Requirements

You must write at least one function for each question, but feel free to define other 'helper' functions that are called in your _answer_ functions. This is especially useful if you have code that repeats.

1. How many quotes does Mal have? Write a function that takes the name of a character as an argument, and returns the number of quotes that character has. Then, call that function for `"Mal"`

2. Which character said `"I am a leaf on the wind. Watch how I soar."`? Write a function that takes a quote as an argument and returns the name of the character who said that quote.

3. What is River's longest quote? Write a function that takes the name of a character and returns the longest quote by that character.

4. What is Zoe's average quote length? Write a function that takes the name of a character and returns the average quote length for that character.

Print the results of each question to the console.


Expected output:
```no-highlight
Mal has 5 quotes.
Wash says: I am a leaf on the wind. Watch how I soar.
... etc
```

{% show_hint %}

- `Math.min()` and `Math.max()` may help. These functions take a series of numbers as arguments and return the smallest and largest numbers in the argument list, respectively:

```javascript
let max = Math.max(1, 4);
console.log(max);
//=> 4
```

It can also take an array of numbers as an argument, _if_ you use the spread operator (`...`):

```javascript
let arrayOfNums = [1,2,3,4,5];
let max = Math.max(...arrayOfNums);
console.log(max);
//=> 5
```
{% endshow_hint %}
