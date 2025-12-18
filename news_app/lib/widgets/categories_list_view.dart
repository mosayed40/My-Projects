import 'package:flutter/material.dart';
import 'package:news_app/models/catrgory_model.dart';
import 'package:news_app/widgets/categories_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoriesList = const [
      CategoryModel(image: 'assets/business.avif', title: 'Business'),
      CategoryModel(image: 'assets/entertaiment.avif', title: 'Entertainment'),
      CategoryModel(image: 'assets/health.avif', title: 'Health'),
      CategoryModel(image: 'assets/science.avif', title: 'Science'),
      CategoryModel(image: 'assets/technology.jpeg', title: 'Technology'),
      CategoryModel(image: 'assets/sports.avif', title: 'Sports'),
      CategoryModel(image: 'assets/general.avif', title: 'General'),
    ];
    return SizedBox(
      height: 90,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) =>
            CategoriesList(categoriesList: categoriesList[index]),
      ),
    );
  }
}
