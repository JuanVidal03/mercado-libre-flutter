// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget adminUserItem(String title, IconData icon){
  return Container(
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10.0)
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}