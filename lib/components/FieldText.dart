import 'package:flutter/material.dart';

Widget fieldText(String title, Icon icon, bool isPassword){
  return TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: title,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10)
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        style: TextStyle(
          color: Colors.grey
        )
    );
}