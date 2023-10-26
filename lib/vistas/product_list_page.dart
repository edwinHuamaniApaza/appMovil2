import 'package:aplicacion3/Controladores/product_list_controller.dart';
import 'package:aplicacion3/Models/product.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final ProductListController controller;

  ProductListPage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Productos'),
      ),
      body: FutureBuilder<List<Producto>>(
        future: controller.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay productos disponibles.'));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('Precio: \$${product.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      controller.addToCart(product);
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
