import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_text_styles.dart';
import 'presentation/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.orange,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: AppTextStyles.fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.orange,
          primary: AppColors.orange,
          secondary: AppColors.darkBlue,
          surface: AppColors.white,
          background: AppColors.background,
          error: AppColors.error,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}