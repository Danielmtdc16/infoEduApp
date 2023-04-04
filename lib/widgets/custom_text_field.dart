import 'package:flutter/material.dart';
import 'package:infoedu/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintTextInput;
  final IconData? icon;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.hintTextInput,
    this.icon,
    this.suffixIcon,
    required this.textInputType,
    this.textInputAction,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintTextInput,
        hintStyle: const TextStyle(color: Colors.black54),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        fillColor: kCinzaMuitoClaro,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(icon),
        prefixIconColor: Colors.black45,
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.black45,
      ),
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
    );
  }
}
