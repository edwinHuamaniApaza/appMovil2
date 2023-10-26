import 'package:aplicacion3/Models/product.dart';
import 'package:flutter/foundation.dart';


/* 

class CartController extends ChangeNotifier {
  final List<Producto> _items = [];

  List<Producto> get items => _items;

  double get totalPrice => _items.fold(0, (total, product) => total + product.price);

  void addToCart(Producto product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Producto product) {
    _items.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
 */