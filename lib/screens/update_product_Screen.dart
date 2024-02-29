import 'package:flutter/material.dart';
import 'package:lets_shop_app/models/product_model.dart';
import 'package:lets_shop_app/services/update_product_service.dart';
import 'package:lets_shop_app/widgets/custom_button.dart';
import 'package:lets_shop_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductScreen extends StatefulWidget {
  UpdateProductScreen({super.key});

  static const String id = 'UpdateProductScreen';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? title, description, image, price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Product'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                CustomTextField(
                  hintText: 'product name',
                  onChanged: (data) {
                    title = data;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  keyboardType: TextInputType.number,
                  hintText: 'product price',
                  onChanged: (data) {
                    price = data;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  hintText: 'product description',
                  onChanged: (data) {
                    description = data;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  hintText: 'product image',
                  onChanged: (data) {
                    image = data;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Update',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});

                    try {
                      await updateProduct(product);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: title == null ? product.title : title!,
      price: price == null ? product.price.toString() : price!,
      description: description == null ? product.description : description!,
      image: image == null ? product.image : image!,
      categoty: product.category,
    );
  }
}
