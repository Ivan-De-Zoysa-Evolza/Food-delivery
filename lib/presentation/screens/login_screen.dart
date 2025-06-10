import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../../core/auth/firebase_auth_service.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../widgets/auth_header.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/password_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_checkbox.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = FirebaseAuthService();

  bool _rememberMe = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!EmailValidator.validate(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      await _authService.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );

      // Navigate to home or dashboard screen
      // You can implement your navigation logic here
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login successful!'),
            backgroundColor: AppColors.orange,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _handleForgotPassword() async {
    final email = _emailController.text.trim();
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your email address first'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    if (!EmailValidator.validate(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid email address'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    try {
      await _authService.sendPasswordResetEmail(email: email);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password reset email sent!'),
            backgroundColor: AppColors.orange,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _navigateToSignUp() {
    // Implement navigation to sign up screen
    // Navigator.pushNamed(context, '/signup');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Navigate to Sign Up screen'),
        backgroundColor: AppColors.orange,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
      child: SingleChildScrollView(
      child: Column(
      children: [
      const AuthHeader(
      title: 'Log In',
      subtitle: 'Please sign in to your existing account',
    ),
    Padding(
    padding: const EdgeInsets.all(24),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    const SizedBox(height: 32),

    // Email Field
    CustomTextField(
    label: 'Email',
    hintText: 'example@gmail.com',
    controller: _emailController,
    keyboardType: TextInputType.emailAddress,
    validator: _validateEmail,
    ),

    const SizedBox(height: 24),

    // Password Field
    PasswordField(
    label: 'Password',
    hintText: '••••••••••••',
    controller: _passwordController,
    validator: _validatePassword,
    ),

    const SizedBox(height: 20),

    // Remember Me and Forgot Password
    Row(
    children: [
    Expanded(
    child: CustomCheckbox(
    value: _rememberMe,
    onChanged: (value) {
    setState(() {
    _rememberMe = value ?? false;
    });
    },
    text: 'Remember me',
    ),
    ),
    CustomButton(
    text: 'Forgot Password',
    onPressed: _handleForgotPassword,
    type: ButtonType.text,
    ),
    ],
    ),

    const SizedBox(height: 32),

    // Login Button
    CustomButton(
    text: 'LOG IN',
    onPressed: _handleLogin,
    isLoading: _isLoading,
    width: double.infinity,
    ),

    const SizedBox(height: 32),

    // Sign Up Link
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.secondaryText,
          ),
        ),
        CustomButton(
          text: 'SIGN UP',
          onPressed: _navigateToSignUp,
          type: ButtonType.text,
        ),
      ],
    ),

      const SizedBox(height: 24),
    ],
    ),
    ),
    ),
      ],
      ),
      ),
      ),
    );
  }
}