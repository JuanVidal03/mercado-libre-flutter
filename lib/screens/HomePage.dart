// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tienda_flutter/interface/Categorias.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Mercado Libre"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Cerrar Sesion'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.blue[700],
                  foregroundColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Color(0xFFE5E5E5)),
                        hintText: 'Buscar Producto',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 61, 42, 42)
                        ),
                        
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Color.fromARGB(255, 20, 20, 20)),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notification_add_outlined,
                      color: Colors.white,
                )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/profile");
                    },
                    icon: Icon(
                      Icons.person_outlined,
                      color: Colors.white,
                )),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
                child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Color(0xFF141414),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          categories[index]['icono'],
                          size: 40.0,
                          color: Colors.blue[700],
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          categories[index]['titulo'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}