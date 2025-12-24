import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
    required String id,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'products/$id',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
