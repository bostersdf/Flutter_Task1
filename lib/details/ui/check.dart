import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

// ignore: use_key_in_widget_constructors
class CheckBox extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
          // ignore: deprecated_member_use
          fillColor: MaterialStateProperty.resolveWith<Color>((
            // ignore: deprecated_member_use
            Set<MaterialState> states,
          ) {
            // ignore: deprecated_member_use
            if (states.contains(MaterialState.selected)) {
              return Color.fromRGBO(54, 54, 54, 1);
            }
            return  Color.fromRGBO(72, 178, 231, 1);
          }),
        ),
        Expanded(
          child: Text(
            context.tr('i_agree'),
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 14,
              color: Color.fromRGBO(43, 43, 43, 1),
            ),
          ),
        ),
      ],
    );
  }
}
