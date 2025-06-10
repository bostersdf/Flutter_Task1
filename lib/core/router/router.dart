import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/basket_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/favorite_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/notifications_menu_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/profile_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/orders_screen.dart';
import 'package:matule/layers/presentation/screens/settings-screensTHREE/signin_settings/signin_settings_screen.dart';
import 'package:matule/layers/presentation/screens/settings-screensTHREE/settings_screen.dart';
import 'package:matule/layers/presentation/shared/bottombar.dart';
import 'package:matule/layers/presentation/screens/login-screensONE/create_user.dart';
import 'package:matule/layers/presentation/screens/login-screensONE/forgot_password.dart';
import 'package:matule/layers/presentation/screens/login-screensONE/mail_registration_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/popular_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/shop_screens.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/search_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/start-screensZERO/shoes1.dart';
import 'package:matule/layers/presentation/screens/start-screensZERO/shoes2.dart';
import 'package:matule/layers/presentation/screens/start-screensZERO/shoes3.dart';
import 'package:matule/layers/presentation/screens/login-screensONE/signin_screen.dart';
import 'package:matule/layers/presentation/screens/main-screensTWO/home_menu_screen.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ZoomDrawer(
            controller: ZoomDrawerController(),
            menuScreen: TWOHomeMenuClass(),
            mainScreen: BottombarClass(navigationShell: navigationShell),
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
                builder: (context, state) => TWOShopScreenClass()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorite', 
                builder: (context, state) => TWOFavoriteClass()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/notifications', 
                builder: (context, state) => TWONotificationsClass()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => TWOProfileScreenClass(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/', 
        builder: (context, state) => ZEROShoesScreen1()),
      GoRoute(
        path: '/shoes2', 
        builder: (context, state) => ZEROShoesScreen2()),
      GoRoute(
        path: '/shoes3', 
        builder: (context, state) => ZEROShoesScreen3()),
      GoRoute(
        path: '/one', 
        builder: (context, state) => ONESigninClass()),
        GoRoute(
        path: '/signsetting', 
        builder: (context, state) => THREESigninSettingsClass()),
      GoRoute(
        path: '/password',
        builder: (context, state) => ONEForgotPasswordClass ()),
      GoRoute(
        path: '/create', 
        builder: (context, state) => ONECreateUserClass()),
      GoRoute(
        path: '/mailr', 
        builder: (context, state) => ONEMailRegistrationClass()),
      GoRoute(
        path: '/popular',
        builder: (context, state) => TWOPopularClass()),
      GoRoute(
        path: '/settings',
        builder: (context, state) => THREESettingsClass(),),
      GoRoute(
        path: '/search',
        builder: (context, state) => TWOSearchScreenClass(),
      ),
      GoRoute(
        path: '/basket',
        builder: (context, state) => TWOBasketClass(),
      ),
      GoRoute(
        path: '/orders',
        builder: (context, state) => TWOOrderClass(),
      ),
    ],
  );
}
