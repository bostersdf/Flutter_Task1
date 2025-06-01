import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TWOBasketClass extends StatefulWidget {
  const TWOBasketClass({super.key});

  @override
  State<TWOBasketClass> createState() => TWOBasketClassState();
}

class TWOBasketClassState extends State<TWOBasketClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                alignment: Alignment.center,
                child: IconButton(
                   onPressed: () => context.go('/start'),
                  icon: Icon(CupertinoIcons.back),
                ),
              ),
              Text(
                context.tr('basket'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                   decoration: TextDecoration.none
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(height: 25),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 3,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(8),
              children: List.generate(3, (index) => ShoesbasketClass()),
            ),
          ),
          SizedBox(height: 70),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              children: List.generate(1, (index) => SaleClass()),
            ),
          ),
        ]
      ),
    );
  }
}
class ShoesbasketClass extends StatelessWidget {
  const ShoesbasketClass({super.key});

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
        Positioned(
          top: 50,
          left: 20,
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
                CupertinoIcons.minus,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 70,
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
          left: 150,
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
          top: 50,
          left: 150,
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
          top: 10,
          left: 250,
          child: Container(
            height: 75,
            width: 50,
            decoration: BoxDecoration(
              color:  Color.fromRGBO(199, 86, 86, 1),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.trash_circle,
                color: Color.fromRGBO(201, 201, 204, 1),
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ]
    );
  }
}
class SaleClass extends StatelessWidget {
  const SaleClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 300,
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 5),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Text(
            context.tr('Sum'),
              style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(35, 37, 39, 0.3),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
            ),
        ),
        Positioned(
          top: 50,
          left: 250,
          child: Text(
            '₽2 256.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(43, 43, 43, 1),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 20,
          child: Text(
            context.tr('Delivery'),
              style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(35, 37, 39, 0.3),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
            ),
        ),
        Positioned(
          top: 80,
          left: 250,
          child: Text(
            '₽256.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(43, 43, 43, 1),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 115),
          child: Divider(color: Color.fromRGBO(53, 53, 53, 1)),
         ),
          Positioned(
          top: 150,
          left: 20,
          child: Text(
            context.tr('Total'),
              style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(35, 37, 39, 0.6),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none
            ),
            ),
        ),
        Positioned(
          top: 150,
          left: 250,
          child: Text(
            '₽2 512.00',
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color.fromRGBO(72, 178, 231, 1),
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 0,
          right: 0,
         child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CupertinoButton(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(72, 178, 231, 1),
          onPressed: () => context.go('/orders'),
          child: Text(
            context.tr('PaO'),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              ),
            ),
          ),
        ),
        ),
      ]
    );
  }
}