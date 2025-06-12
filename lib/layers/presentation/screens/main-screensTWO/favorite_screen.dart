import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Matule/layers/presentation/shared/ui/cards.dart';

class TWOFavoriteClass extends StatefulWidget {
  const TWOFavoriteClass({super.key});

  @override
  State<TWOFavoriteClass> createState() => TWOFavoriteClassState();
}

class TWOFavoriteClassState extends State<TWOFavoriteClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),
              Text(
                context.tr('favorite'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () => {},
                  icon: Icon(CupertinoIcons.bag, size: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              padding: EdgeInsets.all(6),
              children: List.generate(8,(index)=>CardsClass()),
            ),
          ),
        ],
      ),
    );
  }
}