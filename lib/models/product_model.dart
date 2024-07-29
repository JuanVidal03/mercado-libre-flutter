class Product {

  final String id;
  final String title;
  final String descripcion;
  final int price;

  Product({required this.id, required this.title, required this.descripcion, required this.price});

  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      id: json['_id'],
      title: json['title'],
      descripcion: json['descripcion'],
      price: json['price']);
  }

}