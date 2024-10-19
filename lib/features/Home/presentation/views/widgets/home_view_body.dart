import 'package:flutter/material.dart';
import 'package:realstateapp/features/Home/presentation/views/widgets/grid_view_category.dart';
import 'package:realstateapp/features/Home/presentation/views/widgets/title_home_view.dart';

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
        TitleHomeView(width: width, height: height),
        Expanded(
          child: GridViewCategory(
            width: width * 2.5,
            height: height * 0.25,
          ),
        )
      ],
    );
  }
}
