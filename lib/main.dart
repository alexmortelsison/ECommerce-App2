import 'package:ecommerce_app2/themes/lightmode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/shop.dart';
import 'pages/cart_page.dart';
import 'pages/intro_page.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      routes: {
        '/shop_page': (context) => const ShopPage(),
        '/intro_page': (context) => const IntroPage(),
        '/cart_page': (context) => const CartPage(),
      },
      home: const IntroPage(),
    );
  }
}
