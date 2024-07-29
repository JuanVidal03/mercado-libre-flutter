// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tienda_flutter/components/AdminUserItem.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Administrador de Usuarios"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/1535/1535024.png',
              width: 200,
              height: 200
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                adminUserItem("Buscar Usuario", Icons.loupe_sharp),
                SizedBox(height: 15.0),
                adminUserItem("Usuarios", Icons.people)
              ],
            )
          ],
        ),
      ),
    );
  }
}