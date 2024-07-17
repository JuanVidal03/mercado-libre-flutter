

import 'package:flutter/material.dart';
import 'package:tienda_flutter/components/ProfileInfoRow.dart';

Widget profileInfo(String text, IconData icon, String value){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      profileInfoRow(text, icon),
      Text(value, style: TextStyle(color: Colors.white),),
    ],
  );
}