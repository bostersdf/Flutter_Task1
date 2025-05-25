import  "package:flutter_task1/details/screens/create_user.dart";
import 'package:flutter_task1/details/screens/home.dart';
import  'package:flutter_task1/details/screens/forgot_password.dart';
import 'package:flutter_task1/details/screens/mail_registration_screen.dart';
import 'package:flutter_task1/details/screens/shoes1.dart';
import 'package:flutter_task1/details/screens/shoes2.dart';
import 'package:flutter_task1/details/screens/shoes3.dart';
import 'package:flutter_task1/details/screens/signin_screen.dart';
import 'package:go_router/go_router.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SS1(),
        routes: [
          GoRoute(
            path: '/shoes2',
            builder: (context, state) => SS2(),
            routes: [],
          ),
          GoRoute(
            path: '/shoes3',
            builder: (context, state) => SS3(),
            routes: [
            ],
          ),
          GoRoute(
            path: '/one',
            builder: (context, state) => SC(),
            routes: [],
          ),
          GoRoute(
            path: '/password',
            builder: (context, state) => FPC(),
            routes: [],
          ),
          GoRoute(
            path: '/create',
            builder: (context, state) => CUC(),
            routes: [],
          ),
          GoRoute(
            path: '/mailr',
            builder: (context, state) => MGC(),
            routes: [],
          ),
          GoRoute(
            path: '/start',
            builder: (context, state) => HSC(),
            routes: [],
          ),
        ],
      ),
    ],
  );
}
