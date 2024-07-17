import 'package:flutter/material.dart';
import 'package:tienda_flutter/screens/HomePage.dart';
import 'package:tienda_flutter/screens/Login.dart';
import 'package:tienda_flutter/screens/RegisterUsers.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xFF1e1e1e),
        scaffoldBackgroundColor: Color(0xFF1e1e1e),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/register': (context) => RegisterUsers(),
        '/inicio': (context) => HomePage(),
        '/login': (context) => Login(),
      },
    );
  }
}