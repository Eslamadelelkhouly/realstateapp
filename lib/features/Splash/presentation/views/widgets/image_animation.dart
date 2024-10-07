import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class ImageAnimation extends StatelessWidget {
  const ImageAnimation({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return RippleAnimation(
      child: CircleAvatar(
        maxRadius: width * 0.3,
        backgroundImage: AssetImage(logoImage),
      ),
      color: Color(0xffFC9732),
      delay: const Duration(milliseconds: 300),
      repeat: false,
      minRadius: 75,
      ripplesCount: 5,
      duration: const Duration(milliseconds: 6 * 300),
    );
  }
}
