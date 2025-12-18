import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_card.dart';

class newsListView extends StatelessWidget {
  const newsListView({super.key, required this.articlesList});
  final List<ArticlesModel> articlesList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articlesList.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: NewsCard(itemsList: articlesList[index]),
        );
      }),
    );
  }
}
