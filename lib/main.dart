import 'package:flutter/material.dart';
import 'package:lets_shop_app/screens/home_screen.dart';
import 'package:lets_shop_app/screens/update_product_screen.dart';

void main() {
  runApp(const LetsShopApp());
}

class LetsShopApp extends StatelessWidget {
  const LetsShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpdateProductScreen.id: (context) => UpdateProductScreen(),
      },
    );
  }
}
