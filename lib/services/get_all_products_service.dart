import 'package:lets_shop_app/helper/api_helper.dart';
import 'package:lets_shop_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
  List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productsList = [];

    for (var product in data) {
      ProductModel productModel = ProductModel.fromJson(product);
      productsList.add(productModel);
    }
    print(productsList);
    return productsList;
  }
}
