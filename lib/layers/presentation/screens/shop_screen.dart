import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/screens/search_screen.dart';
import 'package:matule/layers/presentation/shared/ui/cards.dart';

class ShopScreenClass extends StatefulWidget {
  const ShopScreenClass({super.key});

  @override
  State<ShopScreenClass> createState() => ShopScreenClassState();
}

class ShopScreenClassState extends State<ShopScreenClass> {
  final TextEditingController searchController = TextEditingController();

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
                ),
                child: IconButton(
                  onPressed: () {
                    ZoomDrawer.of(context)?.toggle();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
              Text(
                context.tr('Home'),
                style: GoogleFonts.roboto(
                  fontSize: 40,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.bag),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push
                    (context,MaterialPageRoute(builder: (context) => SearchScreenClass(),),
                        ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IgnorePointer(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: context.tr('Search'),
                            prefixIcon: Icon(Icons.search),
                            suffixIcon:
                                searchController.text.isEmpty
                                    ? null
                                    : IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: () {
                                        searchController.clear();
                                        setState(() {});
                                      },
                                    ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                          ),
                          onChanged: (value) => setState(() {}),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
            ],
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              context.tr('category'),
              style: GoogleFonts.roboto(
                fontSize: 15,
                color: Color.fromRGBO(43, 43, 43, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 0),
              children: [
                
                Container(
                  width: 140,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    context.tr('all'),
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Color.fromRGBO(43, 43, 43, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Text(
                      'Outdoor',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Color.fromRGBO(43, 43, 43, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Tennis',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Color.fromRGBO(43, 43, 43, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.tr('popular'),
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                child: Text(
                  context.tr('all'),
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    color: Color.fromRGBO(72, 178, 231, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CardsClass(), SizedBox(width: 10), CardsClass()],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
