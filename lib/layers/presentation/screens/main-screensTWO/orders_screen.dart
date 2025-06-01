import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TWOOrderClass extends StatefulWidget {
  const TWOOrderClass({super.key});

  @override
  State<TWOOrderClass> createState() => TWOOrderClassState();
}

class TWOOrderClassState extends State<TWOOrderClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: IconButton(
                   onPressed: () => context.go('/start'),
                  icon: Icon(CupertinoIcons.back),
                ),
              ),
              Text(
                context.tr('orders'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                   decoration: TextDecoration.none
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(height: 50),
          Text(
            ('13.09'),
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Color.fromRGBO(43, 43, 43, 1),
              decoration: TextDecoration.none
          ),
         ),
         SizedBox(height: 15),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 3,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(8),
              children: List.generate(4, (index) => ShoesOrderClass()),
            ),
          ),
        ]
      ),
    );
  }
}
class ShoesOrderClass extends StatelessWidget {
  const ShoesOrderClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 100,
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 5),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color:  Color.fromRGBO(201, 201, 204, 1),
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: Alignment.center,
            child: Container(
            height: 75,
            width: 75,
            child: Image.asset('assets/shoes_card.png', fit: BoxFit.contain),
          ),
          ),
        ),
        Positioned(
          top: 20,
          left: 110,
          child: Text(
            '№148894144',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(72, 178, 231, 1),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 265,
          child: Text(
            '10:42',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(35, 37, 39, 0.527),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 110,
          child: Text(
              'Nike Air Max',
              style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(35, 37, 39, 0.527),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
            ),
        ),
        Positioned(
          top: 60,
          left: 110,
          child: Text(
            '₽752.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(43, 43, 43, 1),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 180,
          child: Text(
            '₽256.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(43, 43, 43, 0.5),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
          ),
        ),
      ]
    );
  }
}