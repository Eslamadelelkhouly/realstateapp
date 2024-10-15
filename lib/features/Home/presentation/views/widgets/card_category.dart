import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondryColor,
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Image.asset(
            'assets/images/Apartment.png',
            height: height * 0.70,
          ),
        ],
      ),
    );
  }
}
