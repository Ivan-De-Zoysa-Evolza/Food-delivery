import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import '../../core/constants/app_colors.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool enabled;

  const PasswordField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.validator,
    this.onChanged,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: widget.label,
      hintText: widget.hintText,
      controller: widget.controller,
      obscureText: _isObscured,
      validator: widget.validator,
      onChanged: widget.onChanged,
      enabled: widget.enabled,
      suffixIcon: IconButton(
        icon: Icon(
          _isObscured ? Icons.visibility_off : Icons.visibility,
          color: AppColors.lightText,
          size: 20,
        ),
        onPressed: () {
          setState(() {
            _isObscured = !_isObscured;
          });
        },
      ),
    );
  }
}