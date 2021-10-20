import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final IconData preIcon;
  const CustomTextField({
    Key? key,
    required this.textInputType,
    required this.hintText,
    required this.preIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: TextField(
          keyboardType: textInputType,
          decoration: InputDecoration(
            prefixIcon: Icon(preIcon, size: 20),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 15, color: Colors.white38),
          ),
        ),
      ),
    );
  }
}
