import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/shop_screen.dart';

class TWOSearchScreenClass extends StatefulWidget {
  const TWOSearchScreenClass({super.key});

  @override
  State<TWOSearchScreenClass> createState() => TWOSearchScreenClassState();
}

class TWOSearchScreenClassState extends State<TWOSearchScreenClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
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
                  onPressed:
                      () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TWOShopScreenClass()),
                      ),
                  icon: Icon(CupertinoIcons.back),
                ),
              ),
              Text(
                context.tr('Search'),
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: context.tr('Search'),
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
