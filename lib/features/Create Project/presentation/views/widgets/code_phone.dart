import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/styles.dart';

class CodePhone extends StatefulWidget {
  const CodePhone({super.key});

  @override
  State<CodePhone> createState() => _CodePhoneState();
}

class _CodePhoneState extends State<CodePhone> {
  String codenumber = '+20';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: () {
          showCountryPicker(
            context: context,
            onSelect: (value) {
              setState(() {
                codenumber = '+${value.phoneCode}';
              });
            },
          );
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: secondryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              codenumber,
              style: Styles.textstyle20,
            ),
          ),
        ),
      ),
    );
  }
}
