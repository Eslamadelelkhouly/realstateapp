import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/core/utils/app_router.dart';
import 'package:realstateapp/features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Real State',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
