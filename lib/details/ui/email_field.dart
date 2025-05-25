import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        disabledBorder: InputBorder.none,
        border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide.none,),
      ),
    );
  }
}
