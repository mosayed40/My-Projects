import 'package:flutter/material.dart';
import 'package:news_app/models/catrgory_model.dart';
import 'package:news_app/views/categor_view.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categoriesList});
  final CategoryModel categoriesList;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryView(category: categoriesList.title),
          ),
        );
      },
      child: Container(
        width: 170,
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(categoriesList.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.center,
        child: Text(
          categoriesList.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
