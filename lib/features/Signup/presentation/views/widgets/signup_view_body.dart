import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstateapp/core/utils/app_router.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/core/widgets/custom_button.dart';
import 'package:realstateapp/features/Signup/presentation/views/widgets/custom_text_field.dart';
import 'package:realstateapp/features/Splash/presentation/views/widgets/image_animation.dart';
import 'package:sign_in_button/sign_in_button.dart';

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
                height: height * 0.1,
              ),
              ImageAnimation(width: width),
              SizedBox(height: height * 0.05),
              const Text(
                'Let\'s Start!',
                style: Styles.textstyle30,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                obcureText: false,
                hintText: 'Email',
                width: width - width * 0.15,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                obcureText: true,
                hintText: 'Password',
                width: width - width * 0.15,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Sign in',
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.Khomescreen,
                  );
                },
                width: width - width * 0.1,
                height: 55,
              ),
              const SizedBox(height: 10),
              SignInButton(
                Buttons.google,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.facebook,
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
