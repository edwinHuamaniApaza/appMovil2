/* import 'package:aplicacion3/producto.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  final Cart cart;

  ShoppingCartPage({required this.cart});

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  double calculateSubtotal(Product product) {
    return product.price * product.quantity;
  }

  double calculateTotal() {
    double total = 0;
    for (var product in widget.cart.items) {
      total += calculateSubtotal(product);
    }
    return total;
  }

  void incrementQuantity(Product product) {
    setState(() {
      product.quantity++;
    });
  }

  void decrementQuantity(Product product) {
    if (product.quantity > 0) {
      setState(() {
        product.quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: ListView.builder(
        itemCount: widget.cart.items.length,
        itemBuilder: (context, index) {
          final product = widget.cart.items[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Precio: \$${product.price.toStringAsFixed(2)}'),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        decrementQuantity(product);
                      },
                    ),
                    Text('Cantidad: ${product.quantity}'),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        incrementQuantity(product);
                      },
                    ),
                  ],
                ),
                Text('Subtotal: \$${calculateSubtotal(product).toStringAsFixed(2)}'),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Total: \$${calculateTotal().toStringAsFixed(2)}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes implementar la lógica para completar la compra
              },
              child: Text('Completar Compra'),
            ),
          ],
        ),
      ),
    );
  }
}
 */