// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget profileInfoRow(String text, IconData icon){
  return Row(
    children: [
      Icon(icon, color: Colors.white),
      Padding(padding: EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      )
    ],
  );
}