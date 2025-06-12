import 'package:flutter/material.dart';
import 'package:shop_pakaian/item_screen.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    var existingItem = _cartItems.firstWhere(
      (item) => item.name == product.name,
      orElse: () => product,
    );

    if (_cartItems.contains(existingItem)) {
      existingItem.quantity++;
    } else {
      _cartItems.add(product);
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  void updateQuantity(Product product, int newQuantity) {
    final index = _cartItems.indexOf(product);
    if (index != -1) {
      _cartItems[index].quantity = newQuantity;
      notifyListeners();
    }
  }

  double get totalPrice {
    return _cartItems.fold(0, (sum, item) => 
      sum + (double.parse(item.price) * item.quantity));
  }
}