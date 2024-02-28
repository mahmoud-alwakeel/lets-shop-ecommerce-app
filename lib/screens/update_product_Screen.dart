import 'package:flutter/material.dart';
import 'package:lets_shop_app/widgets/custom_button.dart';
import 'package:lets_shop_app/widgets/custom_text_field.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({super.key});

  static const String id = 'UpdateProductScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'product name',
            ),
            const SizedBox(height: 12,),
            CustomTextField(
              hintText: 'product price',
            ),
            const SizedBox(height: 12,),
            CustomTextField(
              hintText: 'product description',
            ),
            const SizedBox(height: 12,),
            CustomTextField(
              hintText: 'product image',
            ),
            const SizedBox(height: 30,),
            const CustomButton(text: 'Update')
          ],
        ),
      ),
    );
  }
}