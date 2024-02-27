import 'package:lets_shop_app/helper/api_helper.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
      List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');

      print(data);
      return data;

  }
}
