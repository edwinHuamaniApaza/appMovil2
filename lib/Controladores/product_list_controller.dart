import 'package:aplicacion3/Models/product.dart';
import 'package:aplicacion3/Controladores/cart.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductListController {
  final Cart cart;

  ProductListController({required this.cart});

  // Método para cargar los productos desde la API
  Future<List<Producto>> fetchProducts() async {
    final apiUrl = 'https://shop-api-roan.vercel.app/product';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final products = data.map((item) => Producto.fromJson(item)).toList();
        return products;
      } else {
        // Manejo de errores en caso de que la solicitud falle
        throw Exception('Error al obtener los productos: ${response.statusCode}');
      }
    } catch (e) {
      // Manejo de errores en caso de excepciones
      throw Exception('Error: $e');
    }
  }

  // Método para agregar productos al carrito

  void addToCart(Producto product) {
    // Verificar si el producto está disponible en el stock
    if (product.stock > 0) {
      // Agregar el producto al carrito
      cart.addItem(product);
      // Reducir el stock del producto
      int redu=product.stock;
      redu--;
      
    } else {
      // Mostrar un mensaje de error (puedes implementarlo)
      print('Error: Producto agotado');
    }
  }



}
