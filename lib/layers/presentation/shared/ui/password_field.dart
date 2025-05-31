import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          onPressed: () {setState(() {obscureText = !obscureText;});
          },
        ),
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
