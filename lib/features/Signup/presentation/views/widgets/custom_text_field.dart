import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.width,
      required this.hintText,
      required this.obcureText});
  final double width;
  final String hintText;
  final bool obcureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
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
