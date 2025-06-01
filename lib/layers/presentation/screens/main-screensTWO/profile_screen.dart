import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TWOProfileScreenClass extends StatefulWidget {
  const TWOProfileScreenClass({super.key});

  @override
  State<TWOProfileScreenClass> createState() => TWOProfileScreenClassState();
}

class TWOProfileScreenClassState extends State<TWOProfileScreenClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.tr('profile'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/profile.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:10),
          Center(
            child : Column(
              children:[
                Text('bosters',
                  style : GoogleFonts.roboto(
                    fontSize :20,
                    color : Color.fromRGBO(43,43,43,1),
                    fontWeight : FontWeight.w700,
                  )
                ),
              ]
            )
          ),
          SizedBox(height:25),
          buildLabeledTextField(context.tr('your_name')),
          SizedBox(height:25),
          buildLabeledTextField(context.tr('surname')),
          SizedBox(height:25),
          buildLabeledTextField(context.tr('address')),
          SizedBox(height:25),
          buildLabeledTextField(context.tr('telephone')),
        ],
      ),
    );
  }
  Widget buildLabeledTextField(String labelText) {
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children:[
        Text(
          labelText,
          style : GoogleFonts.roboto(
            fontSize :20,
            color : Color.fromRGBO(43,43,43,1),
            fontWeight : FontWeight.w400,
          ),
        ),
        SizedBox(height :8),
        TextField(
           decoration:
               InputDecoration(
                 filled:true,
                 fillColor : Color.fromRGBO(247,247,249,1),
                 disabledBorder : InputBorder.none,
                 border : OutlineInputBorder(
                  borderRadius : BorderRadius.circular(100), 
                  borderSide : BorderSide.none),
               )
         )
      ]
    );
    }
}
