import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetCategoryService {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    List<dynamic> data = await Api().get(
      url: '/products/category/$categoryName',
    );

    List<ProductModel> caregoryList = [];
    for (int i = 0; i < data.length; i++) {
      caregoryList.add(ProductModel.fromJson(data[i]));
    }

    return caregoryList;
  }
}
