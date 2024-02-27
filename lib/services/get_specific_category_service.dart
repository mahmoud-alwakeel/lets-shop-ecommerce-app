import 'package:lets_shop_app/helper/api_helper.dart';
import 'package:lets_shop_app/models/product_model.dart';

class SpecificCategoryService {
  Future<List<ProductModel>> getSpecificCategory({required String categoryName}) async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> specificCategoryList = [];

    for (var product in data) {
      specificCategoryList.add(ProductModel.fromJson(product));
    }
    return specificCategoryList;
  }
}