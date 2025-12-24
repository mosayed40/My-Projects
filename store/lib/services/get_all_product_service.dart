import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetAllPeoductService {
  Future<List<ProductModel>> getAllProductService() async {
    List<dynamic> response = await Api().get(url: 'products');

    List<ProductModel> productList = [];
    for (int i = 0; i < response.length; i++) {
      productList.add(ProductModel.fromJson(response[i]));
    }

    return productList;
  }
}
