import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final bool obsecure;
  final Widget? suffix;
  final TextInputType? keyBoarType;
  const CustomTextFormField(
      {Key? key,
      required this.label,
      this.obsecure = false,
      this.suffix,
      this.validator,
      this.textEditingController,
      this.keyBoarType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          label: Text(label),
          suffixIcon: suffix),
      keyboardType: keyBoarType,
      controller: textEditingController,
      validator: validator,
    );
  }
}
