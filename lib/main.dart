import 'package:ecommerce_app2/pages/intro_page.dart';
import 'package:ecommerce_app2/pages/shop_page.dart';
import 'package:ecommerce_app2/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      routes: {
        '/shop_page': (context) => const ShopPage(),
      },
      home: const IntroPage(),
    );
  }
}
