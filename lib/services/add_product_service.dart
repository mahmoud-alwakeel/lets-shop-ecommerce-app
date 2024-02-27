import 'package:lets_shop_app/helper/api_helper.dart';
import 'package:lets_shop_app/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({required String title,required double price, required String description, required String image, required String categoty,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': categoty,
      },
    );
    return ProductModel.fromJson(data);
  }
}
