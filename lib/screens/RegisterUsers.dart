// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_field

import 'package:flutter/material.dart';
// components
import 'package:tienda_flutter/components/FieldText.dart';

class RegisterUsers extends StatefulWidget {
  const RegisterUsers({super.key});

  @override
  State<RegisterUsers> createState() => _RegisterUsersState();
}

class _RegisterUsersState extends State<RegisterUsers> {

  final _formRegisterKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
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
                Text('Te estabamos esperando!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),

                SizedBox(height: 20),
                fieldText(
                  "Nombre completo",
                  Icon(Icons.person_2_rounded),
                  false
                ),  
                SizedBox(height: 10),
                fieldText(
                  "Correo Eléctronico",
                  Icon(Icons.email_outlined),
                  false
                ),
                SizedBox(height: 10),
                fieldText(
                  "Contraseña",
                  Icon(Icons.lock_open_sharp),
                  true
                ),
                SizedBox(height: 10),
                fieldText(
                  "Confirmar Contraseña",
                  Icon(Icons.lock_open_sharp),
                  true
                ),
                SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        /*
                        if (_formRegisterKey.currentState!.validate()) {
                          _formRegisterKey.currentState!
                            .save();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Registro Existoso!", style: TextStyle(color: Colors.red),)),
                          );
                        } */

                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text('Registrarse'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('¿Tienes una cuenta?', style: TextStyle(color: Colors.white),), 
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                    child: Text(
                      'iniciar sesion', style: TextStyle(color: Colors.blue),
                      )

                  )
                ],)
              ],
            ),
          ),
        ),
      )),
    );
  }
}