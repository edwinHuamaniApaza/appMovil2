class Producto {
  final String id;
  final String name;
  final String description;
  final double price;
  final int stock;

  Producto({required this.id, required this.name, required this.description, required this.price, required this.stock});


// Método estático para crear una instancia de Product desde un mapa JSON
  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] ?? 0.0).toDouble(),
      stock: (json['stock'] ?? 0).toInt(),
    );
  }






}