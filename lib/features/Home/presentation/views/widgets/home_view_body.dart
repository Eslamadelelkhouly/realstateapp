import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/core/utils/styles.dart';
import 'package:realstateapp/features/Home/presentation/views/widgets/card_category.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'Hello in RealState',
            style: Styles.textstyle30.copyWith(color: secondryColor),
          ),
        ),
        CardCategory(
          width: width / 2.5,
          height: height * 0.25,
        ),
      ],
    );
  }
}
