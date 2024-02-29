import 'package:flutter/material.dart';
import 'package:lets_shop_app/models/product_model.dart';
import 'package:lets_shop_app/screens/update_product_screen.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.productModel, super.key});

  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        UpdateProductScreen.id,
        arguments: productModel,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 10,
                  offset: const Offset(3, 3))
            ]),
            child: Card(
              color: const  Color(0xFFFFFFF1),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      productModel.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${productModel.price.toString()}'),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[600],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            right: 40,
            child: Image.network(
              productModel.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}