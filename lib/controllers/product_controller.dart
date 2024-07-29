import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:tienda_flutter/models/product_model.dart';

Future<List<Product>> getAllProducts() async {
  try {
    
    final response = await http.get(Uri.parse('https://backend-flutter-mercado-libre.onrender.com/api/products'));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      final products = body.map((product) => Product.fromJson(product)).toList();
      return products;
    } else {
      throw Exception("Error con los productos ${response.statusCode}");
    }

  } catch (e) {
    throw Exception(e);
  }
}