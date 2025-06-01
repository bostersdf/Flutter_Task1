import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TWOHomeMenuClass extends StatelessWidget {
  const TWOHomeMenuClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(top: 84.0, left: 20.0),
      color: Color.fromRGBO(72, 178, 231, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    decoration: TextDecoration.none
                  )
                ),
              ]
            )
          ),
          const SizedBox(height: 30),
          const Divider(color: Color.fromRGBO(247, 247, 249, 0.23)),
          const SizedBox(height: 20),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.profile_circled, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('Home'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/start');
              },
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.person, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('profile'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/profile');
              },
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.bag, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('basket'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/basket');
              },
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.heart, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('favorite'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/favorite');
              },
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(Icons.notifications_outlined, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('notifications'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/notifications');
              },
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.gear, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('settings'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
                context.go('/settings');
              },
            ),
          ),
          const SizedBox(height: 38),
          const Divider(color: Color.fromRGBO(247, 247, 249, 0.23)),
          const SizedBox(height: 30),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(Icons.logout, color: Color.fromRGBO(255, 255, 255, 1)),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('get out'),
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
              onPressed: () {
                context.go('/one');
              },
            ),
          ),
        ],
      ),
    );
  }
}
