import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/styles.dart';

class CardCategory extends StatelessWidget {
  const CardCategory(
      {super.key,
      required this.width,
      required this.height,
      required this.image,
      required this.text});
  final double width;
  final double height;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
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
              image,
              height: height * 0.70,
            ),
            SizedBox(height: height * 0.01),
            Text(
              text,
              style: Styles.textstyle10.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
