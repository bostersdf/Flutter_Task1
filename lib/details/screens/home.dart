import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// HomeScreenClass
class HSC extends StatelessWidget {
  const HSC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(top: 84.0, left: 20.0),
      color: Color.fromRGBO(72, 178, 231, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 150),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.house, color: Color.fromRGBO(43, 43, 43, 1),),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('start'),
                    style: TextStyle(color: Color.fromRGBO(43, 43, 43, 1),),
                  ),
                ],
              ),
              onPressed: () {context.go('');},
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.person, color: Color.fromRGBO(43, 43, 43, 1),),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('profile'),
                    style: TextStyle(color: Color.fromRGBO(43, 43, 43, 1),),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.bag, color: Color.fromRGBO(43, 43, 43, 1),),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('orders'),
                    style: TextStyle(color: Color.fromRGBO(43, 43, 43, 1),),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 50),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(CupertinoIcons.gear, color: Color.fromRGBO(43, 43, 43, 1),),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('settings'),
                    style: TextStyle(color: Color.fromRGBO(43, 43, 43, 1),),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),

          SizedBox(height: 58),
          Divider(color: Color.fromRGBO(247, 247, 249, 0.23)),
          SizedBox(height: 50),

          SizedBox(
            height: 24.0,
            width: 170.0,
            child: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Row(
                children: [
                  Icon(Icons.logout, color: Color.fromRGBO(43, 43, 43, 1),),
                  SizedBox(width: 27.0),
                  Text(
                    context.tr('get out'),
                    style: TextStyle(color: Color.fromRGBO(43, 43, 43, 1),),
                  ),
                ],
              ),
              onPressed: () {context.go('/one');},
            ),
          ),
        ],
      ),
    );
  }
}
