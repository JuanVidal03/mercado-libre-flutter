// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tienda_flutter/components/FieldText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child:Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  Image.network(
                  'https://cdn-icons-png.flaticon.com/128/758/758669.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text('Te estabamos esperando.',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                )),

                SizedBox(height: 20),
                fieldText("Correo eléctronico", Icon(Icons.email_outlined), false),
                SizedBox(height: 10),
                fieldText("Contraseña", Icon(Icons.lock_open_sharp), true),
                
                SizedBox(height: 20,),
                 SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/inicio');
                      },
                      child: Text('Inicias Sesion'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black)),
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('¿No tienes una cuenta?', style: TextStyle(color: Colors.white),), 
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                    child: Text(
                      'Registrarme', style: TextStyle(color: Colors.blue),
                      )

                  )
                ],)
              
              ],
              )
            ),
          ),
        ) ,
      )
    );
  }
}