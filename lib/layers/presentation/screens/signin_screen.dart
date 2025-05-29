import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:matule/layers/presentation/shared/ui/password_field.dart';
import 'package:matule/layers/presentation/shared/ui/email_field.dart';

class SigninClass extends StatelessWidget {
  const SigninClass ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
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
                    onPressed: () {
                      if (context.locale.languageCode == 'en') {
                        context.setLocale(Locale('ru'));
                      } else {
                        context.setLocale(Locale('en'));
                      }
                    },
                    icon: Icon(CupertinoIcons.book),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('wellcome'),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              context.tr('fill_your_details'),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(204, 83, 83, 83),
              ),
            ),
            SizedBox(height: 60),
            Text(
              context.tr('email'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(43, 43, 43, 1),
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
              child: EmailField(),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('password'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(43, 43, 43, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: PasswordField(),
            ),
            GestureDetector(
              onTap: () => context.go('/password'),
              child: 
              Text(
                context.tr('forgot_password'),
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(100, 100, 100, 1),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(100),
              color: Color.fromRGBO(75, 180, 230, 1),
              onPressed: () => context.go('/start'),
              child: Text(
                context.tr('sign_in'),
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),),
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
                        context.tr('new_user'),
                        style: TextStyle(
                          color: Color.fromRGBO(40, 40, 40, 1),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => context.push('/create'),
                        child: Text(context.tr('create_account'),style: TextStyle(color: Color.fromRGBO(70, 77, 80, 1),),),
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
