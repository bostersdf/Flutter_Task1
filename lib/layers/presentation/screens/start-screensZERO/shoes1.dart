import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ZEROShoesScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 0 , bottom: 30,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.tr('wellcome'),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 100),
            Image.asset('assets/Shoes1.png'),
            SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(245, 243, 243, 1),
                  onPressed: () => context.go('/shoes2'),
                  child: Text(
                    context.tr('go'),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(72, 178, 231, 1),
    );
  }
}