import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.width,
      required this.hintText,
      required this.obcureText,
      required this.keyboard});
  final double width;
  final String hintText;
  final bool obcureText;
  final TextInputType keyboard;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        keyboardType: keyboard,
        obscureText: obcureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
