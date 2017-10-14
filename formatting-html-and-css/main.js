// Your JavaScript here
function showIngredients() {
  let ingredientsButton = document.getElementById("ingredients-button");
  ingredientsButton.parentNode.removeChild(ingredientsButton);
  let ingredientsId = document.getElementById("ingredientsId");
  for (var i = 0; i < ingredients.length; i++) {
    appendElement(ingredientsId, "li", ingredients[i]);
  }
}

function showDirections() {
  let directionsButton = document.getElementById("directions-button");
  directionsButton.parentNode.removeChild(directionsButton);
  let directionsId = document.getElementById("directionsId");
  for (var i = 0; i < directions.length; i++) {
    appendElement(directionsId, "li", directions[i]);
  }
}

function appendElement(target, tag, text) {
  let element = document.createElement(tag);
  let textNode = document.createTextNode(text);
  element.appendChild(textNode);
  target.appendChild(element);
}

let ingredients = [
  "1 1/2 pounds Brussels sprouts",
  "3 tablespoons good olive oil",
  "3/4 teaspoon kosher salt",
  "1/2 teaspoon freshly ground black pepper"
];

let directions = [
  "Preheat oven to 400 degrees F.",
  "Cut off the brown ends of the Brussels sprouts.",
  "Pull off any yellow outer leaves.",
  "Mix them in a bowl with the olive oil, salt and pepper.",
  "Pour them on a sheet pan and roast for 35 to 40 minutes.",
  "They should be until crisp on the outside and tender on the inside.",
  "Shake the pan from time to time to brown the sprouts evenly.",
  "Sprinkle with more kosher salt (I like these salty like French fries).",
  "Serve and enjoy!"
];
