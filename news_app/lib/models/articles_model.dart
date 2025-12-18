class ArticlesModel {
  final String title;
  final String? subTitle;
  final String? image;
  final String? url;

  const ArticlesModel({
    required this.title,
    this.subTitle,
    this.image,
    this.url,
  });

  factory ArticlesModel.fromJson(Map<String, dynamic> json) {
    return ArticlesModel(
      title: json['title'] ?? '',
      subTitle: json['description'] ?? '',
      image: json['urlToImage'] ?? '',
      url: json['url'] ?? '',
    );
  }
}
