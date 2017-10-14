// Meets Expectations
let GroceryItem = require('./GroceryItem');

let bestie = 'Launch Academy';

let apple = new GroceryItem("apple", '0.35', 3);
let chexmix = new GroceryItem("chexmix", '4.50', 5);
let banana = new GroceryItem("banana", '0.75', 2);
let cereal = new GroceryItem("cereal", '3.50');

let groceryList = [apple, chexmix, banana, cereal];

let formatCurrency = (number) => {
  // currency formatting reference: https://stackoverflow.com/questions/14467433/currency-formatting-in-javascript
  return '$' + number.toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
};

let summary = (list) => {
  let totalSum = 0;

  console.log('Dear ' + bestie + ',\n\n' + 'I bought you: \n');
  list.forEach((item) => {

    let itemSum = 0;
    let itemPrice = item.returnPrice();
    let itemQuantity = item.returnQuantity();

    itemSum = itemPrice * itemQuantity;
    totalSum += itemSum; // running sum of grocery list total

    console.log(itemQuantity + '\t' + item.returnName() + '\t - ' + formatCurrency(itemSum));
  });
  console.log('\nYou owe me ' + formatCurrency(totalSum) + '.');
};

summary(groceryList);

//Exceeds Expectations
let inventoryNearMe = {
  banana: 2,
  coffee: 2,
  kale: 5,
  chocolateBar: 5,
  apple: 10,
  potato: 11,
  tomato: 1,
  beer: 3,
  avocado: 1,
  milk: 5
};

let inventoryNearBestie = {
  banana: 2,
  coffee: 2,
  kale: 5,
  chocolateBar: 5,
  apple: 10,
  potato: 11,
  tomato: 1,
  beer: 6,
  avocado: 10,
  milk: 5
};
