import 'package:flutter/material.dart';

Widget customTextfield(
  TextEditingController controller,
  TextInputType textInputType,
  String hintText,
  TextInputAction textInputAction,
) {
  return Container(
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: TextField(
      obscureText: false,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
      ),
    ),
  );
}
