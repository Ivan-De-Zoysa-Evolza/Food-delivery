import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

enum ButtonType { primary, secondary, text }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType type;
  final bool isLoading;
  final bool enabled;
  final double? width;
  final double height;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.isLoading = false,
    this.enabled = true,
    this.width,
    this.height = 56,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = enabled && !isLoading && onPressed != null;

    switch (type) {
      case ButtonType.primary:
        return _buildPrimaryButton(isEnabled);
      case ButtonType.secondary:
        return _buildSecondaryButton(isEnabled);
      case ButtonType.text:
        return _buildTextButton(isEnabled);
    }
  }

  Widget _buildPrimaryButton(bool isEnabled) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? AppColors.orange : AppColors.lightGray,
          foregroundColor: AppColors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: isLoading
            ? const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
          ),
        )
            : Text(
          text,
          style: AppTextStyles.button,
        ),
      ),
    );
  }

  Widget _buildSecondaryButton(bool isEnabled) {
    return Container(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: isEnabled ? onPressed : null,
        style: OutlinedButton.styleFrom(
          foregroundColor: isEnabled ? AppColors.orange : AppColors.lightGray,
          side: BorderSide(
            color: isEnabled ? AppColors.orange : AppColors.lightGray,
            width: 2,
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: isLoading
            ? SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(
              isEnabled ? AppColors.orange : AppColors.lightGray,
            ),
          ),
        )
            : Text(
          text,
          style: AppTextStyles.buttonSecondary.copyWith(
            color: isEnabled ? AppColors.orange : AppColors.lightGray,
          ),
        ),
      ),
    );
  }

  Widget _buildTextButton(bool isEnabled) {
    return TextButton(
      onPressed: isEnabled ? onPressed : null,
      style: TextButton.styleFrom(
        foregroundColor: isEnabled ? AppColors.orange : AppColors.lightGray,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        text,
        style: AppTextStyles.link.copyWith(
          color: isEnabled ? AppColors.orange : AppColors.lightGray,
        ),
      ),
    );
  }
}