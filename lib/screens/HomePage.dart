// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:tienda_flutter/interface/Categorias.dart';
import 'package:tienda_flutter/screens/Login.dart';
import 'package:tienda_flutter/screens/Users.dart';
// import 'package:tienda_flutter/screens/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    Users(),
    Login(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Cerrar Sesión'),
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
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: "Usuarios"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Cerrar Sesión"
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    onTap: () {
                      String categorySelected = categories[index]['titulo'];
                      print(categorySelected);
                    },
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
    );
  }
}
