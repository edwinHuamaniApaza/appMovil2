
/* ejemplo2 */
import 'package:aplicacion3/card.dart';
import 'package:aplicacion3/producto.dart';
import 'package:aplicacion3/titulo.dart';
import 'package:aplicacion3/vistas/carrito.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
    );
  }
}


/* 
class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product( name: 'Apple Watch',description: "Digital inteligente táctil.", price:100.00 , imagePath:"assets/img/imagen1.jpg" ),
    /* Product(, "Analógico elegante .", 89.99, "assets/img/imagen2.jpg", name: "Samsung G. Watch"),
    Product("Fitbit Versa", "Analógico elegante .", 57.99, "assets/img/imagen3.jpg"), imagePath: '', */
    
  ];
  
  

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bodega Digital", style: TextStyle(
      fontFamily: 'Atuendo', // Fuente Montserrat.
      fontSize: 20, // Tamaño de fuente deseado.
      fontWeight: FontWeight.bold,
      color: Colors.black)), // Color de fuente deseado.),
        backgroundColor: Color.fromARGB(255, 250, 247, 247),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[200], // Fondo gris claro.
        child: Column(
          children: [
            PageTitle(title: "Lista de productos"),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(product: products[index]);//parametros 
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */



class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Apple Watch', description: "Digital inteligente táctil.", price: 100.00, imagePath: "assets/img/imagen1.jpg"),
    Product(name: 'Apple Watch', description: "Digital inteligente táctil.", price: 100.00, imagePath: "assets/img/imagen1.jpg"),
    Product(name: 'Apple Watch', description: "Digital inteligente táctil.", price: 100.00, imagePath: "assets/img/imagen1.jpg")
  ];
  
  get cart => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bodega Digital",
          style: TextStyle(
            fontFamily: 'Atuendo',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 250, 247, 247),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            PageTitle(title: "Lista de productos"),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
  onPressed: () {
   
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShoppingCartPage(cart: cart)), // Asegúrate de tener un objeto 'cart' válido
    );
  },
  child: Icon(Icons.shopping_cart),
  backgroundColor: Color.fromARGB(255, 110, 176, 10),
),




    );
  }
}


 









