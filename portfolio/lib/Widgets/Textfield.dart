import 'package:flutter/material.dart';
class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,
     this.controller,
     this.maxlines=1,
     this.hinttext});
  final TextEditingController? controller;
   final int maxlines;
  final String? hinttext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxlines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: Colors.white60,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hinttext,
        hintStyle: TextStyle(fontSize: 16,color: Colors.black38)
      ),
    );
  }
}
