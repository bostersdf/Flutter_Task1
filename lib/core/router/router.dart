import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:matule/layers/presentation/screens/bottombar.dart';
import 'package:matule/layers/presentation/screens/create_user.dart';
import 'package:matule/layers/presentation/screens/forgot_password.dart';
import 'package:matule/layers/presentation/screens/mail_registration_screen.dart';
import 'package:matule/layers/presentation/screens/shop_screen.dart';
import 'package:matule/layers/presentation/screens/search_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/shoes1.dart';
import 'package:matule/layers/presentation/screens/shoes2.dart';
import 'package:matule/layers/presentation/screens/shoes3.dart';
import 'package:matule/layers/presentation/screens/signin_screen.dart';
import 'package:matule/layers/presentation/shared/ui/home_menu.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/', 
        builder: (context, state) => ShoesScreen1()),
        GoRoute(
        path: '/shoes2', 
        builder: (context, state) => ShoesScreen2()),
        GoRoute(
        path: '/shoes3', 
        builder: (context, state) => ShoesScreen3()),
      GoRoute(
        path: '/one', 
        builder: (context, state) => SigninClass()),
      GoRoute(
        path: '/password',
        builder: (context, state) => ForgotPasswordClass ()),
      GoRoute(
        path: '/create', 
        builder: (context, state) => CreateUserClass()),
        GoRoute(
        path: '/mailr', 
        builder: (context, state) => MailRegistrationClass()
        ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ZoomDrawer(
            controller: ZoomDrawerController(),
            mainScreen: BottombarClass(navigationShell: navigationShell),
            menuScreen: HomeMenuClass(navigationShell: navigationShell),
            borderRadius: 24.0,
            showShadow: false,
            angle: -12.0,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/start', 
                builder: (context, state) => ShopScreenClass()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                builder: (context, state) => SearchScreenClass(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
