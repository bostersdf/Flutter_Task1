import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TWONotificationsClass extends StatefulWidget {
  const TWONotificationsClass({super.key});

  @override
  State<TWONotificationsClass> createState() => TWONotificationsClassState();
}

class TWONotificationsClassState extends State<TWONotificationsClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 2,
              crossAxisSpacing: 15,
              padding: EdgeInsets.all(8),
              children: List.generate(4, (index) => NotificationsClass()),
            ),
          ),
        ],
      ),
    );
  }
}
class NotificationsClass extends StatelessWidget {
  const NotificationsClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 400,
          height: 180,
          padding: EdgeInsets.only(top: 12, left: 8, bottom: 12, right: 6),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),
        Positioned(
          left: 10,
          top: 10,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Text(
              'Проверьте почту.',
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: Color.fromRGBO(43, 43, 43, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 70,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Text(
              'Проверьте почту на наличие письма, чтобы подтвердить подлинность аккаунта.',
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 150,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Text(
              '13.05.2007 13:05',
              style: GoogleFonts.roboto(
                fontSize: 10,
                color: Color.fromRGBO(112, 123, 129, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
