import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/cover-screen.dart';
import 'pages/login-page.dart';
import 'pages/register-page.dart';
import 'pages/MainScreen/location-screen.dart';
import 'pages/MainScreen/home-screen.dart';
import 'pages/MainScreen/detail-screen.dart';
import 'pages/OrderScreen/food-order-screen.dart';
import 'pages/OrderScreen/cart-screen.dart';
import 'pages/splash-screen.dart';
import 'pages/OrderScreen/orde-accepted-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // unable rotation device
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      // routes: {
      //   '/': (_) => const SplashScreen(),
      //   '/cover': (_)=> const CoverScreen(),
      //   '/login': (_) => const LoginPage(),
      //   '/register': (_) => const RegisterPage(),
      //   '/location': (_) => const LocationScreen(),
      //   '/home': (_) => const HomeScreen(),
      //   '/detail': (_) => const DetailScreen(),
      //   '/detailFood': (_) => const FoodDetailScreen(),
      //   '/cart': (_) => const CartScreen(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (_) => const SplashScreen(), settings: settings);
          case '/cover':
            return CupertinoPageRoute(
                builder: (_) => const CoverScreen(), settings: settings);
          case '/login':
            return CupertinoPageRoute(
                builder: (_) => const LoginPage(), settings: settings);
          case '/register':
            return CupertinoPageRoute(
                builder: (_) => const RegisterPage(), settings: settings);
          case '/location':
            return CupertinoPageRoute(
                builder: (_) => const LocationScreen(), settings: settings);
          case '/home':
            return CupertinoPageRoute(
                builder: (_) => const HomeScreen(), settings: settings);
          case '/detail':
            return CupertinoPageRoute(
                builder: (_) => const DetailScreen(), settings: settings);
          case '/detailFood':
            return CupertinoPageRoute(
                builder: (_) => const FoodDetailScreen(), settings: settings);
          case '/cart':
            return CupertinoPageRoute(
                builder: (_) => const CartScreen(), settings: settings);
          case '/accept-order':
            return CupertinoPageRoute(
                builder: (_) => const OrderAccepted(), settings: settings);
        }
        return null;
      },
    );
  }
}
