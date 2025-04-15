import 'package:flutter/material.dart';

Widget elevatedButtonWidget({
  required VoidCallback onPressed,
  required String title,

}) {
  return SizedBox(
    width: 250,
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.orange,
          shadowColor: Colors.black,
          elevation: 5.5,
          iconColor: Colors.white,
          iconSize: 20,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    child: Text(title),),
  );
}