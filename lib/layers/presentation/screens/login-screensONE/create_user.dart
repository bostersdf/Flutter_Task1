import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/shared/ui/check.dart';
import 'package:matule/layers/presentation/shared/ui/password_field.dart';


// ignore: must_be_immutable
class ONECreateUserClass extends StatefulWidget {
ONECreateUserClass({super.key});
bool isChecked = false;
  @override
  State<ONECreateUserClass> createState() => ONECreateUserState();
}

class ONECreateUserState extends State<ONECreateUserClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 30),
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
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('registration'),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(40, 40, 40, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              context.tr('fill_your_details2'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Color.fromARGB(204, 83, 83, 83),),
            ),
            SizedBox(height: 25),
            Text(
              context.tr('your_name'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(40, 40, 40, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(14.0),
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
            Text(
              context.tr('email'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(40, 40, 40, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(14.0),
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
            Text(
              context.tr('password'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(40, 40, 40, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: PasswordField(),
            ),
            SizedBox(height: 20),
            CheckBox(),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(14),
              color: Color.fromRGBO(72, 178, 231, 1),
              onPressed: () => context.go('/mailr'),
              child: Text(
                context.tr('sign_up'),
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.tr('already_have_account'),
                        style: TextStyle(color: Color.fromRGBO(40, 40, 40, 1)),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => context.go('/one'),
                        child: Text(
                          context.tr('sign_in'),
                          style: TextStyle(color: Color.fromRGBO(112, 123, 129, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
