import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: DropDownTextField(
        textFieldDecoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: 'Category',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        dropDownItemCount: 2,
        dropDownList: const [
          DropDownValueModel(name: 'hotel', value: 'hotel'),
          DropDownValueModel(name: 'home', value: 'home')
        ],
      ),
    );
  }
}
