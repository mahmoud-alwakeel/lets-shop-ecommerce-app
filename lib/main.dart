import 'package:flutter/material.dart';
import 'package:lets_shop_app/screens/home_screen.dart';

void main() {
  runApp(const LetsShopApp());
}

class LetsShopApp extends StatelessWidget {
  const LetsShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const HomeScreen(),
    );
  }
}
