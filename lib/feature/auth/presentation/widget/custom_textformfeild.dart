import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.suffixIcon,
    this.obsecure = false,
    this.validator,
    this.keyboardType = TextInputType.text,
  });
  final String label;
  final IconButton? suffixIcon;
  final bool obsecure;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obsecure,
        decoration: InputDecoration(
          label: Text(label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
