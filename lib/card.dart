
import 'package:flutter/material.dart';
import 'producto.dart';

/* class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
     /*  margin: EdgeInsets.all(12.0), */
     margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      padding: EdgeInsets.all(29.0),
      decoration: BoxDecoration(
        color: Colors.white, // Fondo blanco.
        borderRadius: BorderRadius.circular(10.0), // Borde redondeado.
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              product.imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: TextStyle(
                  fontFamily: 'Montserrat',fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                product.description,
                style: TextStyle(fontFamily: 'Montserrat',fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          Text(
            "\S/${product.price.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
} */



class ProductCard extends StatelessWidget {
  final Product product;

  int quantity = 10; // lo ultimo que se agrego

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  product.imagePath,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "\S/${product.price.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Espacio entre el precio y el botón

          // Botón circular con icono de suma
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                // Aquí puedes agregar productos al carrito
              },
            ),
          ),
          ////////7 botones aumentar y disminuir cantidad
        Container(
  decoration: BoxDecoration(
    border: Border.all(), // Puedes personalizar el borde según tus preferencias
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(Icons.remove),
        onPressed: () {
          // Lógica para disminuir la cantidad
          if (quantity > 0) {
            setState(() {
              quantity--;
            });
          }
        },
      ),
      Text(
        quantity.toString(),
        style: TextStyle(fontSize: 20),
      ),
      IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          // Lógica para incrementar la cantidad
        },
      ),
    ],
  ),
)

        /////// fin widget aumentar y dismiunir
        ],
      ),
    );
  }
  


  void setState(Null Function() param0) {



  }
}
