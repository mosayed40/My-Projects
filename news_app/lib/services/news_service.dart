import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  const NewsService(this.dio);

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      Response response;
      response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=8b6934f70fe043aea717ed88564a73e4&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = [];
      for (var articles in articles) {
        ArticlesModel articlesModel = ArticlesModel.fromJson(articles);
        articlesList.add(articlesModel);
      }

      return articlesList;
    } catch (e) {
      throw Exception('Failed to load news:--- $e');
    }
  }
}
