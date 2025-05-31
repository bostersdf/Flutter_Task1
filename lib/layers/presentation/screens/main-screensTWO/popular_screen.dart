import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/shared/ui/cards.dart';

class TWOPopularClass extends StatefulWidget {
  const TWOPopularClass({super.key});

  @override
  State<TWOPopularClass> createState() => TWOPopularClassState();
}

class TWOPopularClassState extends State<TWOPopularClass> {
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
                  color: Color.fromRGBO(247, 247, 249, 1),
                ),
                child: IconButton(
                  onPressed: () => context.go('/start'),
                  icon: Icon(CupertinoIcons.back, size: 20,),
                ),
              ),
              Text(
                context.tr('popular'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 247, 249, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                 onPressed: () => context.go('/favorite'),
                  icon: Icon(CupertinoIcons.heart, size: 20,),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
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
