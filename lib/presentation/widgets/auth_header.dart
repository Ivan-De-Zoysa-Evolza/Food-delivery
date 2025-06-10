// lib/presentation/widgets/auth_header.dart
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const AuthHeader({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight * 0.4, // Takes about 40% of screen height
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text(
            title,
            style: AppTextStyles.h2.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            subtitle,
            style: AppTextStyles.subtitle.copyWith(
              color: AppColors.white.withOpacity(0.8),
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}