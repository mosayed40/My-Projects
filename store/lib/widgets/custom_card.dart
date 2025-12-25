import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_product_screen.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          UpdateProductScreen.id,
          arguments: product,
        );
      },
      child: Card(
        margin: EdgeInsets.only(top: 8.0),
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: product.image,
                    width: 100,
                    height: 120,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  product.title.substring(0, 11),
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('\$${product.price}', style: TextStyle(fontSize: 20)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: Colors.red, size: 28),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
