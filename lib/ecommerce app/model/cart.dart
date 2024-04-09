import 'package:demochoichoi/ecommerce%20app/model/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Jordan Red black",
        price: "290",
        imagePath: "assets/jordan_co_cao.png",
        description: "Very nice"),
    Shoe(
        name: "Air Color",
        price: "300",
        imagePath: "assets/air_color.png",
        description: "Wonderful"),
    Shoe(
        name: "Nike Elevate",
        price: "460",
        imagePath: "assets/jordan_elevate.png",
        description: "Cool"),
    Shoe(
        name: "Nike Max 90",
        price: "500",
        imagePath: "assets/nike_max.png",
        description: "!!!"),
    Shoe(
        name: "Nike Pegasus",
        price: "350",
        imagePath: "assets/nike_pegasus.png",
        description: "Buy now!!!"),
    Shoe(
        name: "Nike SB",
        price: "200",
        imagePath: "assets/nikesb.png",
        description: "Normal"),
    Shoe(
        name: "Jordan smoke grey",
        price: "550",
        imagePath: "assets/smoke.png",
        description: "Buy now!!!"),
    Shoe(
        name: "Nike V2K",
        price: "350",
        imagePath: "assets/v2k.png",
        description: "Buy now!!!"),
  ];
  // list of items in users cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
