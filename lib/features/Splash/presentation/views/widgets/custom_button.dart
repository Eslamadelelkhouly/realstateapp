import 'package:flutter/material.dart';
import 'package:realstateapp/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width - width * 0.1,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
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
