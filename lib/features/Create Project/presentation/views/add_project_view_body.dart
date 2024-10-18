import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/features/Create%20Project/presentation/views/widgets/code_phone.dart';
import 'package:realstateapp/features/Create%20Project/presentation/views/widgets/phone_text_field.dart';

class AddProjectViewBody extends StatelessWidget {
  const AddProjectViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: height * 0.10),
            Text(
              'Create New Project',
              style: Styles.textstyle30Bold.copyWith(
                color: secondryColor,
              ),
            ),
            SizedBox(height: height * 0.04),
            PhoneTextField(width: width * 0.75)
          ],
        ),
      ),
    );
  }
}
