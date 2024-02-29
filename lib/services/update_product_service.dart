import 'package:lets_shop_app/helper/api_helper.dart';
import 'package:lets_shop_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String categoty,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
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
