import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstateapp/core/utils/app_router.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/core/widgets/custom_button.dart';
import 'package:realstateapp/features/Signup/presentation/views/widgets/column_sign_up.dart';
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
          FormField(
            builder: (context) {
              return ColumnSignUp(height: height, width: width);
            },
          ),
        ],
      ),
    );
  }
}
