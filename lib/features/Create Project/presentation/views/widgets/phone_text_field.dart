import 'package:flutter/material.dart';
import 'package:realstateapp/features/Create%20Project/presentation/views/widgets/category_dropdown.dart';
import 'package:realstateapp/features/Create%20Project/presentation/views/widgets/code_phone.dart';
import 'package:realstateapp/features/Signup/presentation/views/widgets/custom_text_field.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CodePhone(),
        CustomTextField(
          keyboard: TextInputType.phone,
          width: width,
          hintText: 'Phone number',
          obcureText: false,
        ),
      ],
    );
  }
}
