class GroceryList {

  constructor(name, items) {
    this.name = name;
    this.items = items;
  }

  checkInventory(inventory) {

    let itemsFound = [];
    let itemsNotFound = [];

    this.items.forEach((item) => {

      if(inventory.hasOwnProperty(item.name) && inventory[item.name] >= item.returnQuantity()) {
        itemsFound.push(item.name);
      } else {
        itemsNotFound.push(' - ' + item.name + '\n');
      }

    });

    itemsNotFound = itemsNotFound.join("");
    if(itemsFound.length === this.items.length) {
      console.log('This Bodega has it all! You can get everything on your list there.');
      return true;
    } else {
        console.log('Sorry, the bodega doesn\'t have enough of the following:\n' + itemsNotFound +
        'You\'ll have to go someplace else to get these.');
        return false;
    }
  }

}
