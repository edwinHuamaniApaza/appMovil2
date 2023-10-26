



import 'package:aplicacion3/Models/product.dart';

class Cart {
  final List<Producto> items = [];

  void addItem(Producto product) {
    if (product.stock > 0) {
      items.add(product);
      // ignore: unused_local_variable
      int decre=product.stock ; // Reducir el stock del producto
      decre--;

    }
  }




  void removeItem(Producto product) {
    items.remove(product);
    int incre=product.stock; // Incrementar el stock del producto
    incre++;
  }

  double calculateTotal() {
    double total = 0;
    for (var product in items) {
      total += product.price;
    }
    return total;
  }
}