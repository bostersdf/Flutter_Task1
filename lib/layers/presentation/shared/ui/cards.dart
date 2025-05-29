import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsClass extends StatelessWidget {
  const CardsClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 160,
          height: 178,
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
            height: 70,
            width: 70,
            child: Image.asset('assets/shoes_card.png', fit: BoxFit.contain),
          ),
        ),
        Positioned(
          top: 107,
          left: 10,
          child: Text(
            'BEST SELLER',
            style: GoogleFonts.roboto(
              fontSize: 10,
              color: Color.fromRGBO(72, 178, 231, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 10,
          child: Text(
            'Nike Air Max',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(35, 37, 39, 0.527),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 10,
          child: Text(
            '₽752.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(43, 43, 43, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Color.fromRGBO(247, 247, 249, 1),
              borderRadius: BorderRadius.circular(100.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                color: Color.fromRGBO(0, 0, 0, 1),
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 120,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Color.fromRGBO(72, 178, 231, 1),
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                CupertinoIcons.add,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
