class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;

  ArticleModel(
      {required this.image, required this.title, required this.subtitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}


class CategoryModel {
  final String image;
  final String categoryName;

  const CategoryModel({required this.image, required this.categoryName});
}
