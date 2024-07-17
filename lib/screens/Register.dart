// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formRegisterKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            // controller: controller,
              child: Form(
                key: _formRegisterKey,
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/128/758/758669.png',
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(height: 10),
                      Text("Ir a registrarse", style: TextStyle(color: Colors.white),),
                      SizedBox(height: 20),
                      Text("Recuperar password", style: TextStyle(color: Colors.white),),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nombre Completo',
                          prefix: Icon(Icons.person_2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          prefix: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefix: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}