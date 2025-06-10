// lib/presentation/routes/app_router.dart
import 'package:go_router/go_router.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class AppRouter {
  static const String login = '/login';
  static const String signup = '/signup';

  static final GoRouter router = GoRouter(
    initialLocation: login,
    routes: [
      GoRoute(
        path: login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: signup,
        name: 'signup',
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );
}