import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordClass extends StatelessWidget {
  const ForgotPasswordClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 243, 243, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () => context.go('/one'),
                    icon: Icon(CupertinoIcons.back),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('forgot_password'),
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromRGBO(40, 40, 40, 1), fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              context.tr('enter_your_email_to_recovery'),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(112, 123, 129, 1),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(14),
              color: Color.fromRGBO(72, 178, 231, 1),
              onPressed: () => context.go('/mailr'),
              child: Text(
                context.tr('send'),
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
