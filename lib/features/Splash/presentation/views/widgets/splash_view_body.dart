import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/app_router.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/core/widgets/custom_button.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.2),
          RippleAnimation(
            child: CircleAvatar(
              maxRadius: width * 0.3,
              backgroundImage: AssetImage(logoImage),
            ),
            color: Color(0xffFC9732),
            delay: const Duration(milliseconds: 300),
            repeat: false,
            minRadius: 75,
            ripplesCount: 6,
            duration: const Duration(milliseconds: 6 * 300),
          ),
          SizedBox(height: height * 0.06),
          Text(
            'Hello in Real State App',
            style: Styles.textstyle30,
          ),
          Text(
            'efficiently and effectively',
            style: Styles.textstyle20.copyWith(color: Colors.grey),
          ),
          SizedBox(
            height: height * 0.25,
          ),
          CustomButton(
            onPressed: () {
              GoRouter.of(context).push(
                AppRouter.Ksingupscreen,
              );
            },
            width: width - width * 0.1,
            height: 55,
          ),
        ],
      ),
    );
  }
}
