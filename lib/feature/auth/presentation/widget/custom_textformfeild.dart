import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.iconButton,
    this.obsecure = false, this.validator,
  });
  final String label;
  final IconButton? iconButton;
  final bool obsecure;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: TextFormField(
        validator:validator ,
        obscureText: obsecure,
        decoration: InputDecoration(
          label: Text(label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          suffixIcon: iconButton,
        ),
      ),
    );
  }
}
