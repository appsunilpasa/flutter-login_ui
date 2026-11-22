import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? true : false,
      obscuringCharacter: '@',
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontWeight: .bold),
        filled: true,
        fillColor: const Color.fromARGB(255, 240, 239, 238),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 2),
        ),
      ),
    );
  }
}
