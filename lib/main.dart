import 'package:flutter/material.dart';
import 'package:lets_shop_app/screens/home_screen.dart';
import 'package:lets_shop_app/services/get_all_products_service.dart';

void main() {
  AllProductsService().getAllProducts;
  runApp(const LetsShopApp());
}

class LetsShopApp extends StatelessWidget {
  const LetsShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
