import 'package:aplicacion3/Controladores/cart.dart';
import 'package:flutter/material.dart';




class CartPage extends StatelessWidget {
  final Cart controller;

  CartPage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: ListView.builder(
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          final product = controller.items[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('Precio: \$${product.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                controller.removeItem(product);
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Total: \$${controller.calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para completar la compra
              },
              child: Text('Completar Compra'),
            ),
          ],
        ),
      ),
    );
  }
}
