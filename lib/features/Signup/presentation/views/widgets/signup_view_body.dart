import 'package:flutter/material.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/features/Signup/presentation/views/widgets/custom_text_field.dart';
import 'package:realstateapp/features/Splash/presentation/views/widgets/image_animation.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              ImageAnimation(width: width),
              SizedBox(height: height * 0.05),
              Text(
                'Let\'s Start!',
                style: Styles.textstyle30,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                hintText: 'Email',
                width: width - width * 0.15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
