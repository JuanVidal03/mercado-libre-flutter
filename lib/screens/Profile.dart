// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tienda_flutter/components/ProfileInfo.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Perfil de usuario"),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("imagen.jpg"),
              ),
              SizedBox(height: 10),
              Text("Juan Manuel Vidal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                )
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  // color: Colors.green
                ),
                child: Column(
                  children: [
                    profileInfo("Genero", Icons.person, "Masculino"),
                    SizedBox(height: 20),
                    profileInfo("Cumpleaños", Icons.cake, "23/4/2003"),
                    SizedBox(height: 20),
                    profileInfo("Número de telefono", Icons.phone, "3137275474"),
                    SizedBox(height: 20),
                    profileInfo("Cambiar Contraseña", Icons.lock, ">"),
                  ],
                ) 
              )

            ],
          ),
        ),
      ),
    );
  }
}