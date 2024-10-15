import 'package:flutter/material.dart';
import 'package:realstateapp/features/Home/presentation/views/widgets/card_category.dart';
import 'package:realstateapp/features/Signup/data/list_data_model_category.dart';

class GridViewCategory extends StatelessWidget {
  const GridViewCategory(
      {super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Set a fixed number for crossAxisCount
        crossAxisSpacing: 16, // Increased horizontal space between cards
        mainAxisSpacing: 16, // Increased vertical space between cards
      ),
      itemCount:
          category.length, // Add itemCount to prevent out of range errors
      itemBuilder: (BuildContext context, index) {
        return CardCategory(
          width: width,
          height: height,
          image: category[index].image,
          text: category[index].text,
        );
      },
    );
  }
}
