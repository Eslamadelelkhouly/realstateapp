import 'package:flutter/material.dart';
import 'package:realstateapp/features/Signup/presentation/views/widgets/column_sign_up.dart';
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
