import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
// list of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]

    ["Apple Watch", "50.00", "lib/images/miband.jpg", Colors.green],
    ["Male Dress", "30.00", "lib/images/shert.png", Colors.yellow],
    ["Women Shoe", "10.00", "lib/images/women-shoes.png", Colors.brown],
    ["Sport Wear", "100.00", "lib/images/vans old skool.png", Colors.blue]
  ];


    // list of cart items

    List _cartItems = [];

  // get the method
  get shopItems => _shopItems;

  get cartItems => _cartItems;


  // add item to cart

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    // updating data accross other widgets
    notifyListeners();

    }  
    
     // remove item from cart

    void removeItemFromCart(int index){
      _cartItems.removeAt(index);
      notifyListeners();
    }

    // calculate total price 
    String calculateTotal(){
      double totalPrice = 0;
      for (int i =0; i < _cartItems.length; i++){
        totalPrice += double.parse(_cartItems[i][1]);
      }
      return totalPrice.toStringAsFixed(2);
    }


  }

