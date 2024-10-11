import 'package:go_router/go_router.dart';
import 'package:realstateapp/features/Home/presentation/views/home_view.dart';
import 'package:realstateapp/features/Signup/presentation/views/signup_view.dart';
import 'package:realstateapp/features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const Ksingupscreen = '/signupscreen';
  static const Khomescreen = '/homescreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Ksingupscreen,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: Khomescreen,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
