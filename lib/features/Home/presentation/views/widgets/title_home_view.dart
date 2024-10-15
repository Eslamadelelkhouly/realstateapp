import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/styles.dart';

class TitleHomeView extends StatelessWidget {
  const TitleHomeView({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width - width * 0.25,
        height: height * 0.1,
        decoration: BoxDecoration(
          color: secondryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello in RealState',
              textAlign: TextAlign.center,
              style: Styles.textstyle30.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
