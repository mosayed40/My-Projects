import 'package:store/helper/api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: '/products/categories');

    return data;
  }
}
