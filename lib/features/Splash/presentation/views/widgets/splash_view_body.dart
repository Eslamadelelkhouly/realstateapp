import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/features/Splash/presentation/views/widgets/custom_button.dart';

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
          SizedBox(height: height * 0.1),
          Image.asset(
            logoImage,
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
            height: height * 0.15,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
