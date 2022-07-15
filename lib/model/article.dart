import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article(
      {required String title,
      required String url,
      required String id,
      required User user,
      required}) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
