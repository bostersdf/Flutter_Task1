import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShoesScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..scale(-1.0, 1.0),
              child: Transform.rotate(
                angle: pi / 6,
                child: Image.asset('assets/Shoes2.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('lets start the journey'),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 10),
            Text(
              context.tr('St'),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(245, 243, 243, 1),
                  onPressed: () => context.go('/shoes3'),
                  child: Text(
                    context.tr('next'),
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