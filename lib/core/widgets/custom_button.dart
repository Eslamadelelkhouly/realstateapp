import 'package:flutter/material.dart';
import 'package:realstateapp/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.height, required this.width, this.onPressed});
  final double height;
  final double width;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          'Start Now',
          style: Styles.textstyle20Bold.copyWith(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Color(0xffFC9732),
        ),
      ),
    );
  }
}
