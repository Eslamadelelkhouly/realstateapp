import 'package:flutter/material.dart';
import 'package:realstateapp/features/Reals/presentation/view/widgets/reals_view_body.dart';

class RealsView extends StatelessWidget {
  const RealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RealsViewBody(),
    );
  }
}