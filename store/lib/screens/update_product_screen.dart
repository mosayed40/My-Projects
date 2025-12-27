import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product_service.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_text_form_field.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});
  static String id = 'UpdateProductPage';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    TextEditingController imageController = TextEditingController();

    bool isLoading = false;

    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(title: Text('Update Product'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CachedNetworkImage(imageUrl: product.image, height: 250),
                CustomTextField(
                  hint: 'Product Name...',
                  controller: titleController,
                ),
                CustomTextField(
                  hint: 'Description...',
                  controller: descController,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  hint: 'Price...',
                  controller: priceController,
                ),
                CustomTextField(hint: 'Image...', controller: imageController),
                SizedBox(height: 20),
                CustomButton(
                  textButton: 'Update',
                  onPressed: () async {
                    setState(() => isLoading = true);
                    try {
                      await updateProduct(
                        titleController,
                        priceController,
                        descController,
                        imageController,
                        product,
                      );
                      log('Success');
                    } on Exception catch (e) {
                      log("error: $e");
                    }
                    setState(() => isLoading = false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(
    TextEditingController? titleController,
    TextEditingController? priceController,
    TextEditingController? descController,
    TextEditingController? imageController,
    ProductModel product,
  ) async {
    await UpdateProductService().updateProduct(
      title: titleController?.text.isNotEmpty == true
          ? titleController!.text
          : product.title,
      price: priceController?.text.isNotEmpty == true
          ? priceController!.text
          : product.price.toString(),
      desc: descController?.text.isNotEmpty == true
          ? descController!.text
          : product.description,
      image: imageController?.text.isNotEmpty == true
          ? imageController!.text
          : product.image,

      category: product.category,
      id: product.id.toString(),
    );
  }
}
