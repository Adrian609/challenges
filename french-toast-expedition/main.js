// Drew Andre - Ignition Week 5 / javascript / french toast expedition
// 8.8.17

var loaf_of_bread_cost = parseInt(prompt("How much does the bread cost?"));

var gallon_of_milk_cost = parseInt(prompt("How much does the milk cost?"));

var one_dozen_eggs_cost = parseInt(prompt("How much do the eggs cost?"));

var total_cost = loaf_of_bread_cost + gallon_of_milk_cost + one_dozen_eggs_cost;
var total_cost_with_storm = total_cost * 3;

console.log("Total cost = " + total_cost);
console.log("Total cost during a storm (*3)= " + total_cost_with_storm);
