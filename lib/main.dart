import 'package:flutter/material.dart';
import 'package:realstateapp/features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real State',
      themeMode: ThemeMode.light,
      home: const SplashView(),
    );
  }
}
