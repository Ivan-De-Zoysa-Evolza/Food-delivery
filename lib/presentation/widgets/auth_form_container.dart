import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class AuthFormContainer extends StatelessWidget {
  final Widget child;
  final double topOffset;

  const AuthFormContainer({
    Key? key,
    required this.child,
    this.topOffset = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topOffset),
      child: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}