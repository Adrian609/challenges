class GroceryItem {

  constructor(name, price, quantity) {
    this.name = name;
    this.price = price;
    this.quantity = quantity;
  }

  returnName() {
    return this.name;
  }
  returnPrice() {
    return this.price;
  }
  returnQuantity() {
    if (this.quantity !== undefined) {
      return this.quantity;
    } else {
      return 1;
    }
   }
}

module.exports = GroceryItem;
