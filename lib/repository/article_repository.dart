import 'package:arukatsu/model/article.dart';
import 'package:dio/dio.dart';

class ArticleRepository {
  Future<List<Article>> fetchList() async {
    var dio = Dio();
    final response = await dio.get<List<dynamic>>(
        'https://qiita.com/api/v2/items?page=1&per_page=20');
    return response.data!.map((data) => Article.fromJson(data)).toList();
  }
}
